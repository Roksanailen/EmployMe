// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

class AuthModel {
    final String? message;
    final Data? data;

    AuthModel({
        this.message,
        this.data,
    });

    factory AuthModel.fromJson(Map<String, dynamic> json) => AuthModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    final String? userName;
    final String? firstName;
    final String? lastName;
    final String? email;
    final String? phone;
    final String? address;
    final String? idNumber;
    final DateTime? updatedAt;
    final DateTime? createdAt;
    final int? id;
    final String? accessToken;

    Data({
        this.userName,
        this.firstName,
        this.lastName,
        this.email,
        this.phone,
        this.address,
        this.idNumber,
        this.updatedAt,
        this.createdAt,
        this.id,
        this.accessToken,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        userName: json["user_name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        idNumber: json["idNumber"],
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        id: json["id"],
        accessToken: json["access_token"],
    );

    Map<String, dynamic> toJson() => {
        "user_name": userName,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "address": address,
        "idNumber": idNumber,
        "updated_at": updatedAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "id": id,
        "access_token": accessToken,
    };
}
