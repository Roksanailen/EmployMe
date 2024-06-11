// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

ProfileModel profileFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
    final bool? status;
    final String? message;
    final Data? data;

    ProfileModel({
        this.status,
        this.message,
        this.data,
    });

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
    };
}

class Data {
    final int? id;
    final String? userName;
    final String? firstName;
    final String? lastName;
    final String? phone;
    final String? email;
    final String? password;
    final String? idNumber;

    Data({
        this.id,
        this.userName,
        this.firstName,
        this.lastName,
        this.phone,
        this.email,
        this.password,
        this.idNumber,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userName: json["user_name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        idNumber: json["idNumber"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_name": userName,
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "email": email,
        "password": password,
        "idNumber": idNumber,
    };
}
