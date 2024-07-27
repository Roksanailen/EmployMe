// To parse this JSON data, do
//
//     final sectionTypeResponseModel = sectionTypeResponseModelFromJson(jsonString);

import 'dart:convert';

SectionTypeResponseModel sectionTypeResponseModelFromJson(String str) =>
    SectionTypeResponseModel.fromJson(json.decode(str));

String sectionTypeResponseModelToJson(SectionTypeResponseModel data) =>
    json.encode(data.toJson());

class SectionTypeResponseModel {
  final bool? status;
  final String? message;
  final SectionTypeModel? data;

  SectionTypeResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory SectionTypeResponseModel.fromJson(Map<String, dynamic> json) =>
      SectionTypeResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? null
            : SectionTypeModel.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class SectionTypeModel {
  final int? id;
  final String? title;
  final String? jobDescription;
  final int? count;
  final int? age;
  final String? gender;
  final int? salary;
  final int? sectionCompanyId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<dynamic>? skillJob;
  final List<dynamic>? media;
  final List<dynamic>? educationJob;

  SectionTypeModel({
    this.id,
    this.title,
    this.jobDescription,
    this.count,
    this.age,
    this.gender,
    this.salary,
    this.sectionCompanyId,
    this.createdAt,
    this.updatedAt,
    this.skillJob,
    this.media,
    this.educationJob,
  });

  factory SectionTypeModel.fromJson(Map<String, dynamic> json) =>
      SectionTypeModel(
        id: json["id"],
        title: json["title"],
        jobDescription: json["jobDescription"],
        count: json["count"],
        age: json["Age"],
        gender: json["gender"],
        salary: json["salary"],
        sectionCompanyId: json["section_company_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        skillJob: json["skill_job"] == null
            ? []
            : List<dynamic>.from(json["skill_job"]!.map((x) => x)),
        media: json["media"] == null
            ? []
            : List<dynamic>.from(json["media"]!.map((x) => x)),
        educationJob: json["education_job"] == null
            ? []
            : List<dynamic>.from(json["education_job"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "jobDescription": jobDescription,
        "count": count,
        "Age": age,
        "gender": gender,
        "salary": salary,
        "section_company_id": sectionCompanyId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "skill_job":
            skillJob == null ? [] : List<dynamic>.from(skillJob!.map((x) => x)),
        "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x)),
        "education_job": educationJob == null
            ? []
            : List<dynamic>.from(educationJob!.map((x) => x)),
      };
}
