// To parse this JSON data, do
//
//     final profile = profileFromJson(jsonString);

import 'dart:convert';

Profile profileFromJson(String str) => Profile.fromJson(json.decode(str));

String profileToJson(Profile data) => json.encode(data.toJson());

class Profile {
  final bool? status;
  final String? message;
  final User? data;

  Profile({
    this.status,
    this.message,
    this.data,
  });

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : User.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

class User {
  final int? id;
  final String? userName;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final String? idNumber;
  final String? accessToken;

  User({
    this.id,
    this.userName,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.idNumber,
    this.accessToken,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userName: json["user_name"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        phone: json["phone"],
        email: json["email"],
        idNumber: json["idNumber"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_name": userName,
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "email": email,
        "idNumber": idNumber,
        "access_token": accessToken,
      };
}
