// To parse this JSON data, do
//
//     final companyResponseModel = companyResponseModelFromJson(jsonString);

import 'dart:convert';

CompanyResponseModel companyResponseModelFromJson(String str) =>
    CompanyResponseModel.fromJson(json.decode(str));

String companyResponseModelToJson(CompanyResponseModel data) =>
    json.encode(data.toJson());

class CompanyResponseModel {
  final bool? status;
  final String? message;
  final List<CompanyModel>? data;

  CompanyResponseModel({
    this.status,
    this.message,
    this.data,
  });

  factory CompanyResponseModel.fromJson(Map<String, dynamic> json) =>
      CompanyResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<CompanyModel>.from(
                json["data"]!.map((x) => CompanyModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class CompanyModel {
  final int? id;
  final String? name;
  final String? type;
  final String? email;
  final String? address;
  final String? website;
  final String? phone;
  final String? mobile;
  final int? confirm;
  final dynamic emailVerifiedAt;
  final int? managerId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<dynamic>? media;

  CompanyModel({
    this.id,
    this.name,
    this.type,
    this.email,
    this.address,
    this.website,
    this.phone,
    this.mobile,
    this.confirm,
    this.emailVerifiedAt,
    this.managerId,
    this.createdAt,
    this.updatedAt,
    this.media,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) => CompanyModel(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        email: json["email"],
        address: json["address"],
        website: json["website"],
        phone: json["phone"],
        mobile: json["mobile"],
        confirm: json["confirm"],
        emailVerifiedAt: json["email_verified_at"],
        managerId: json["manager_id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        media: json["media"] == null
            ? []
            : List<dynamic>.from(json["media"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "email": email,
        "address": address,
        "website": website,
        "phone": phone,
        "mobile": mobile,
        "confirm": confirm,
        "email_verified_at": emailVerifiedAt,
        "manager_id": managerId,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x)),
      };
}
