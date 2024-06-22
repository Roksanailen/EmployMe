import 'package:flutter/material.dart';

class CertificateAi {
  final String name;
  final int value;
  CertificateAi({
    required this.name,
    required this.value,
  });
}

class EducationalInstituteAi {
  final String name;
  final int value;
  EducationalInstituteAi({
    required this.name,
    required this.value,
  });
}

class SpecializationNameAi {
  final String name;
  final int value;
  SpecializationNameAi({
    required this.name,
    required this.value,
  });
}

class SkillsAi {
  final String name;
  final ValueNotifier<int> value;
  final int selectedValue;
  SkillsAi({
    required this.name,
    required this.value,
    required this.selectedValue,
  });
}
