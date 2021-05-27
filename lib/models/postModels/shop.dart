// To parse this JSON data, do
//
//     final ShopModel = ShopModelFromJson(jsonString);

import 'dart:convert';

ShopModel welcomeFromJson(String str) => ShopModel.fromJson(json.decode(str));

String welcomeToJson(ShopModel data) => json.encode(data.toJson());

class ShopModel {
    ShopModel({
        this.success,
        this.message,
        this.details,
    });

    bool success;
    String message;
    Details details;

    factory ShopModel.fromJson(Map<String, dynamic> json) => ShopModel(
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
        this.logoUrl,
        this.id,
        this.name,
        this.address,
        this.about,
        this.ownerId,
        this.createdAt,
        this.updatedAt,
    });

    dynamic logoUrl;
    String id;
    String name;
    String address;
    String about;
    String ownerId;
    DateTime createdAt;
    DateTime updatedAt;

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        logoUrl: json["logoURL"],
        id: json["_id"],
        name: json["name"],
        address: json["address"],
        about: json["about"],
        ownerId: json["ownerID"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "logoURL": logoUrl,
        "_id": id,
        "name": name,
        "address": address,
        "about": about,
        "ownerID": ownerId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}
