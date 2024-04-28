// To parse this JSON data, do
//
//     final sectionResponseModel = sectionResponseModelFromJson(jsonString);

import 'dart:convert';

SectionResponseModel sectionResponseModelFromJson(String str) => SectionResponseModel.fromJson(json.decode(str));

String sectionResponseModelToJson(SectionResponseModel data) => json.encode(data.toJson());

class SectionResponseModel {
    final bool? success;
    final List<SectionModel>? data;

    SectionResponseModel({
        this.success,
        this.data,
    });

    factory SectionResponseModel.fromJson(Map<String, dynamic> json) => SectionResponseModel(
        success: json["success"],
        data: json["data"] == null ? [] : List<SectionModel>.from(json["data"]!.map((x) => SectionModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class SectionModel {
    final int? id;
    final String? name;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    SectionModel({
        this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
    });

    factory SectionModel.fromJson(Map<String, dynamic> json) => SectionModel(
        id: json["id"],
        name: json["name"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}

