// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

OrderModel welcomeFromJson(String str) => OrderModel.fromJson(json.decode(str));

String welcomeToJson(OrderModel data) => json.encode(data.toJson());

class OrderModel {
  OrderModel({
    this.success,
    this.message,
    this.details,
  });

  bool success;
  String message;
  Details details;

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        success: json["success"],
        message: json["message"],
        details: Details.fromJson(json["details"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "details": details.toJson(),
      };
}

class Details {
  Details({
    this.statues,
    this.packages,
    this.buyerNote,
    this.id,
    this.adId,
    this.userId,
    this.createdAt,
    this.updatedAt,
  });

  String statues;
  List<dynamic> packages;
  String buyerNote;
  String id;
  String adId;
  String userId;
  DateTime createdAt;
  DateTime updatedAt;

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        statues: json["statues"],
        packages: List<dynamic>.from(json["packages"].map((x) => x)),
        buyerNote: json["buyerNote"],
        id: json["_id"],
        adId: json["adID"],
        userId: json["userID"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "statues": statues,
        "packages": List<dynamic>.from(packages.map((x) => x)),
        "buyerNote": buyerNote,
        "_id": id,
        "adID": adId,
        "userID": userId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}
