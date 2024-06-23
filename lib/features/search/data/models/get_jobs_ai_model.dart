// To parse this JSON data, do
//
//     final getJobsAiResponseModel = getJobsAiResponseModelFromJson(jsonString);

import 'dart:convert';

GetJobsAiResponseModel getJobsAiResponseModelFromJson(String str) =>
    GetJobsAiResponseModel.fromJson(json.decode(str));

String getJobsAiResponseModelToJson(GetJobsAiResponseModel data) =>
    json.encode(data.toJson());

class GetJobsAiResponseModel {
  final bool? status;
  final String? message;
  final List<SearchJobAi>? data;

  GetJobsAiResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory GetJobsAiResponseModel.fromJson(Map<String, dynamic> json) =>
      GetJobsAiResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<SearchJobAi>.from(
                json["data"]!.map((x) => SearchJobAi.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class SearchJobAi {
  final int? id;
  final String? title;
  final String? jobDescription;
  final int? count;
  final int? age;
  final String? gender;
  final int? salary;
  final int? sectionCompanyId;

  SearchJobAi({
    this.id,
    this.title,
    this.jobDescription,
    this.count,
    this.age,
    this.gender,
    this.salary,
    this.sectionCompanyId,
  });

  factory SearchJobAi.fromJson(Map<String, dynamic> json) => SearchJobAi(
        id: json["id"],
        title: json["title"],
        jobDescription: json["jobDescription"],
        count: json["count"],
        age: json["Age"],
        gender: json["gender"],
        salary: json["salary"],
        sectionCompanyId: json["section_company_id"],
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
      };
}
