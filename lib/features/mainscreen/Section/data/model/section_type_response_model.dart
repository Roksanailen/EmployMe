// To parse this JSON data, do
//
//     final sectionTypeRespnoseModel = sectionTypeRespnoseModelFromJson(jsonString);

import 'dart:convert';

SectionTypeRespnoseModel sectionTypeRespnoseModelFromJson(String str) => SectionTypeRespnoseModel.fromJson(json.decode(str));

String sectionTypeRespnoseModelToJson(SectionTypeRespnoseModel data) => json.encode(data.toJson());

class SectionTypeRespnoseModel {
    final bool? status;
    final String? message;
    final List<JobModel>? data;

    SectionTypeRespnoseModel({
        this.status,
        this.message,
        this.data,
    });

    factory SectionTypeRespnoseModel.fromJson(Map<String, dynamic> json) => SectionTypeRespnoseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? [] : List<JobModel>.from(json["data"]!.map((x) => JobModel.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class JobModel {
    final int? id;
    final String? title;
    final int? salary;
    final Media? media;

    JobModel({
        this.id,
        this.title,
        this.salary,
        this.media,
    });

    factory JobModel.fromJson(Map<String, dynamic> json) => JobModel(
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
    final String? mediaUrl;
    final String? hash;

    Media({
        this.mediaUrl,
        this.hash,
    });

    factory Media.fromJson(Map<String, dynamic> json) => Media(
        mediaUrl: json["media_url"],
        hash: json["hash"],
    );

    Map<String, dynamic> toJson() => {
        "media_url": mediaUrl,
        "hash": hash,
    };
}
