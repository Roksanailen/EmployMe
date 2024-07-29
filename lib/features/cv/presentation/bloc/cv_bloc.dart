import 'package:bloc/bloc.dart';
import 'package:emplooo/core/enums/request_status.dart';
import 'package:emplooo/core/toaster.dart';
import 'package:emplooo/features/cv/data/repo/cv_repo.dart';
import 'package:flutter/material.dart';

part 'cv_event.dart';
part 'cv_state.dart';

class CvBloc extends Bloc<CvEvent, CvState> {
  CvBloc() : super(CvState()) {
    on<ResetStateEvent>((event, emit) {
      emit(CvState());
    });
    on<EditAgeEvent>((event, emit) {
      emit(state.copyWith(age: event.age));
    });
    on<EditYearsEvent>((event, emit) {
      emit(state.copyWith(experienceYears: event.years));
    });
    on<EditLanguagesEvent>((event, emit) {
      emit(state.copyWith(
        arabicLanguage: event.arabic,
        englishLanguage: event.english,
        germanLanguage: event.german,
        frenchLanguage: event.French,
        russianLanguage: event.Russian,
        chineseLanguage: event.Chinese,
        otherLanguage: event.other,
        
      ));
    });
    on<EditCertificateEvent>((event, emit) {
      emit(state.copyWith(certificateDegree: event.certificate));
    });
    on<EditSkillsEvent>((event, emit) {
      emit(state.copyWith(
        communication: event.communication,
        revit: event.revit,
        autoCad: event.autoCad,
        nCARB: event.nCARB,
        graphic: event.graphic,
        vscode: event.vscode,
        mySql: event.mySql,
        express: event.express,
        html: event.html,
        dart: event.dart,
        fireBase: event.fireBase,
        react: event.react,
        figma: event.figma,
        adobe: event.adobe,
        python: event.python,
        postgreSql: event.postgreSql,
        php: event.php,
        restful: event.restful,
        cpp: event.cpp,
        managerait: event.managerait,
        iCDL: event.iCDL,
        pgMp: event.pgMp,
        javaScript: event.javaScript,
        json: event.json,
        bootstrap: event.bootstrap,
        other: event.other,
      ));
    });
    on<EditCertificateNameEvent>((event, emit) {
      emit(state.copyWith(certificate: event.certificateName));
    });
    on<EditSpecializationEvent>((event, emit) {
      emit(state.copyWith(specialization: event.specialization));
    });
    on<SendRequestEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      if (state.validate()) {
        print(state.toJson());
        final result = await CvRepo().sendCv(state.toJson());
        result.fold((l) {
          Toaster.showToast(l.message);
          emit(state.copyWith(status: RequestStatus.fail));
        }, (r) {
          Toaster.showToast(r);
          emit(state.copyWith(status: RequestStatus.success, response: r));
        });
        add(ResetStateEvent());
      }
    });
  }
}
