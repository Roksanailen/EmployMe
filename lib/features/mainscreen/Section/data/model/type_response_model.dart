// To parse this JSON data, do
//
//     final typeResponseModel = typeResponseModelFromJson(jsonString);

import 'dart:convert';

TypeResponseModel typeResponseModelFromJson(String str) => TypeResponseModel.fromJson(json.decode(str));

String typeResponseModelToJson(TypeResponseModel data) => json.encode(data.toJson());

class TypeResponseModel {
    final bool? success;
    final List<TypeModel>? data;

    TypeResponseModel({
        this.success,
        this.data,
    });

    factory TypeResponseModel.fromJson(Map<String, dynamic> json) => TypeResponseModel(
        success: json["success"],
        data: json["data"] == null ? [] : List<TypeModel>.from(json["data"]!.map((x) => TypeModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class TypeModel {
    final int? id;
    final String? title;
    final String? jobDescription;
    final int? count;
    final int? salary;
    final int? sectionCompanyId;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    TypeModel({
        this.id,
        this.title,
        this.jobDescription,
        this.count,
        this.salary,
        this.sectionCompanyId,
        this.createdAt,
        this.updatedAt,
    });

    factory TypeModel.fromJson(Map<String, dynamic> json) => TypeModel(
        id: json["id"],
        title: json["title"],
        jobDescription: json["jobDescription"],
        count: json["count"],
        salary: json["salary"],
        sectionCompanyId: json["section_company_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "jobDescription": jobDescription,
        "count": count,
        "salary": salary,
        "section_company_id": sectionCompanyId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}