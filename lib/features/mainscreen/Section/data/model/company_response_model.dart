// To parse this JSON data, do
//
//     final companyResponseModel = companyResponseModelFromJson(jsonString);

import 'dart:convert';

CompanyResponseModel companyResponseModelFromJson(String str) => CompanyResponseModel.fromJson(json.decode(str));

String companyResponseModelToJson(CompanyResponseModel data) => json.encode(data.toJson());

class CompanyResponseModel {
    final bool? success;
    final List<CompanyModel>? data;

    CompanyResponseModel({
        this.success,
        this.data,
    });

    factory CompanyResponseModel.fromJson(Map<String, dynamic> json) => CompanyResponseModel(
        success: json["success"],
        data: json["data"] == null ? [] : List<CompanyModel>.from(json["data"]!.map((x) => CompanyModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class CompanyModel {
    final int? id;
    final String? name;
    final String? type;
    final String? email;
    final String? address;
    final String? website;
    final dynamic emailVerifiedAt;
    final int? managerId;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    CompanyModel({
        this.id,
        this.name,
        this.type,
        this.email,
        this.address,
        this.website,
        this.emailVerifiedAt,
        this.managerId,
        this.createdAt,
        this.updatedAt,
    });

    factory CompanyModel.fromJson(Map<String, dynamic> json) => CompanyModel(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        email: json["email"],
        address: json["address"],
        website: json["website"],
        emailVerifiedAt: json["email_verified_at"],
        managerId: json["manager_id"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "email": email,
        "address": address,
        "website": website,
        "email_verified_at": emailVerifiedAt,
        "manager_id": managerId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };
}
