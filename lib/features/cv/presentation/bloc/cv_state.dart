part of 'cv_bloc.dart';

class CvState {
  final RequestStatus status;
  final String? response;
  final int? certificateDegree;
  final int? certificate;
  final int? specialization;
  final int? englishLanguage;
  final int? arabicLanguage;
  final int? germanLanguage;
  final int? experienceYears;
  final int? age;
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
  CvState({
    this.status = RequestStatus.init,
    this.response,
    this.certificateDegree,
    this.certificate,
    this.specialization,
    this.englishLanguage = 0,
    this.arabicLanguage = 0,
    this.germanLanguage = 0,
    this.experienceYears,
    this.age,
    this.communication = 0,
    this.revit = 0,
    this.autoCad = 0,
    this.nCARB = 0,
    this.graphic = 0,
    this.vscode = 0,
    this.mySql = 0,
    this.express = 0,
    this.html = 0,
    this.dart = 0,
    this.fireBase = 0,
    this.react = 0,
    this.figma = 0,
    this.adobe = 0,
    this.python = 0,
    this.postgreSql = 0,
    this.php = 0,
    this.restful = 0,
    this.cpp = 0,
    this.managerait = 0,
    this.iCDL = 0,
    this.pgMp = 0,
    this.javaScript = 0,
    this.json = 0,
    this.bootstrap = 0,
  });

  CvState copyWith({
    RequestStatus? status,
    String? response,
    int? certificateDegree,
    int? certificate,
    int? specialization,
    int? englishLanguage,
    int? arabicLanguage,
    int? germanLanguage,
    int? experienceYears,
    int? age,
    int? communication,
    int? revit,
    int? autoCad,
    int? nCARB,
    int? graphic,
    int? vscode,
    int? mySql,
    int? express,
    int? html,
    int? dart,
    int? fireBase,
    int? react,
    int? figma,
    int? adobe,
    int? python,
    int? postgreSql,
    int? php,
    int? restful,
    int? cpp,
    int? managerait,
    int? iCDL,
    int? pgMp,
    int? javaScript,
    int? json,
    int? bootstrap,
  }) {
    return CvState(
      status: status ?? this.status,
      response: response ?? this.response,
      certificateDegree: certificateDegree ?? this.certificateDegree,
      certificate: certificate ?? this.certificate,
      specialization: specialization ?? this.specialization,
      englishLanguage: englishLanguage ?? this.englishLanguage,
      arabicLanguage: arabicLanguage ?? this.arabicLanguage,
      germanLanguage: germanLanguage ?? this.germanLanguage,
      experienceYears: experienceYears ?? this.experienceYears,
      age: age ?? this.age,
      communication: communication ?? this.communication,
      revit: revit ?? this.revit,
      autoCad: autoCad ?? this.autoCad,
      nCARB: nCARB ?? this.nCARB,
      graphic: graphic ?? this.graphic,
      vscode: vscode ?? this.vscode,
      mySql: mySql ?? this.mySql,
      express: express ?? this.express,
      html: html ?? this.html,
      dart: dart ?? this.dart,
      fireBase: fireBase ?? this.fireBase,
      react: react ?? this.react,
      figma: figma ?? this.figma,
      adobe: adobe ?? this.adobe,
      python: python ?? this.python,
      postgreSql: postgreSql ?? this.postgreSql,
      php: php ?? this.php,
      restful: restful ?? this.restful,
      cpp: cpp ?? this.cpp,
      managerait: managerait ?? this.managerait,
      iCDL: iCDL ?? this.iCDL,
      pgMp: pgMp ?? this.pgMp,
      javaScript: javaScript ?? this.javaScript,
      json: json ?? this.json,
      bootstrap: bootstrap ?? this.bootstrap,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sample': [
        certificateDegree,
        certificate,
        specialization,
        arabicLanguage,
        englishLanguage,
        germanLanguage,
        communication,
        revit,
        autoCad,
        nCARB,
        graphic,
        vscode,
        mySql,
        express,
        html,
        dart,
        fireBase,
        react,
        figma,
        adobe,
        python,
        postgreSql,
        php,
        restful,
        cpp,
        managerait,
        iCDL,
        pgMp,
        javaScript,
        json,
        bootstrap,
        experienceYears,
        age,
      ],
    };
  }

  bool validate() {
    return certificateDegree != null &&
        certificate != null &&
        englishLanguage != null &&
        arabicLanguage != null &&
        germanLanguage != null &&
        experienceYears != null &&
        specialization != null &&
        age != null;
  }

  bool validate2() {
    return certificateDegree != null &&
        certificate != null &&
        specialization != null;
  }
}
