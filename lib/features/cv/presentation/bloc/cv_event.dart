part of 'cv_bloc.dart';

@immutable
abstract class CvEvent {}

class SendRequestEvent extends CvEvent {}

class EditAgeEvent extends CvEvent {
  final int age;
  EditAgeEvent({
    required this.age,
  });
}

class EditCertificateEvent extends CvEvent {
  final int certificate;
  EditCertificateEvent({
    required this.certificate,
  });
}

class EditCertificateNameEvent extends CvEvent {
  final int certificateName;
  EditCertificateNameEvent({
    required this.certificateName,
  });
}

class EditLanguagesEvent extends CvEvent {
  final int arabic;
  final int english;
  final int german;
  EditLanguagesEvent({
    required this.arabic,
    required this.english,
    required this.german,
  });
}

class EditSkillsEvent extends CvEvent {
  final int? communication;
  final int? revit;
  final int? autoCad;
  final int? nCARB;
  final int? graphic;
  final int? vscode;
  final int? mySql;
  final int? express;
  final int? html;
  final int? dart;
  final int? fireBase;
  final int? react;
  final int? figma;
  final int? adobe;
  final int? python;
  final int? postgreSql;
  final int? php;
  final int? restful;
  final int? cpp;
  final int? managerait;
  final int? iCDL;
  final int? pgMp;
  final int? javaScript;
  final int? json;
  final int? bootstrap;
  EditSkillsEvent({
    this.communication,
    this.revit,
    this.autoCad,
    this.nCARB,
    this.graphic,
    this.vscode,
    this.mySql,
    this.express,
    this.html,
    this.dart,
    this.fireBase,
    this.react,
    this.figma,
    this.adobe,
    this.python,
    this.postgreSql,
    this.php,
    this.restful,
    this.cpp,
    this.managerait,
    this.iCDL,
    this.pgMp,
    this.javaScript,
    this.json,
    this.bootstrap,
  });
}

class EditYearsEvent extends CvEvent {
  final int years;
  EditYearsEvent({
    required this.years,
  });
}

class EditSpecializationEvent extends CvEvent {
  final int specialization;
  EditSpecializationEvent({
    required this.specialization,
  });
}

class ResetStateEvent extends CvEvent {}
