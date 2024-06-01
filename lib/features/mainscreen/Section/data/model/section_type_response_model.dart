// To parse this JSON data, do
//
//     final sectionTypeResponseModel = sectionTypeResponseModelFromJson(jsonString);

import 'dart:convert';

SectionTypeResponseModel sectionTypeResponseModelFromJson(String str) => SectionTypeResponseModel.fromJson(json.decode(str));

String sectionTypeResponseModelToJson(SectionTypeResponseModel data) => json.encode(data.toJson());

class SectionTypeResponseModel {
    final bool? status;
    final String? message;
    final List<Datum>? data;

    SectionTypeResponseModel({
        this.status,
        this.message,
        this.data,
    });

    factory SectionTypeResponseModel.fromJson(Map<String, dynamic> json) => SectionTypeResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    final int? id;
    final String? title;
    final int? salary;
    final Media? media;

    Datum({
        this.id,
        this.title,
        this.salary,
        this.media,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        salary: json["salary"],
        media: json["media"] == null ? null : Media.fromJson(json["media"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "salary": salary,
        "media": media?.toJson(),
    };
}

class Media {
    final int? id;
    final String? mediaUrl;
    final dynamic hash;
    final int? order;

    Media({
        this.id,
        this.mediaUrl,
        this.hash,
        this.order,
    });

    factory Media.fromJson(Map<String, dynamic> json) => Media(
        id: json["id"],
        mediaUrl: json["media_url"],
        hash: json["hash"],
        order: json["order"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "media_url": mediaUrl,
        "hash": hash,
        "order": order,
    };
}
