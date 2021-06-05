// To parse this JSON data, do
//
//     final GetCategory = welcomeFromJson(jsonString);

import 'dart:convert';

GetCategory welcomeFromJson(String str) => GetCategory.fromJson(json.decode(str));

String welcomeToJson(GetCategory data) => json.encode(data.toJson());

class GetCategory {
    GetCategory({
        this.success,
        this.data,
    });

    bool success;
    List<Datum> data;

    factory GetCategory.fromJson(Map<String, dynamic> json) => GetCategory(
        success: json["success"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.subcategoryId,
        this.id,
        this.categoryType,
        this.createdAt,
        this.updatedAt,
    });

    List<dynamic> subcategoryId;
    String id;
    String categoryType;
    DateTime createdAt;
    DateTime updatedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        subcategoryId: List<dynamic>.from(json["SubcategoryID"].map((x) => x)),
        id: json["_id"],
        categoryType: json["categoryType"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "SubcategoryID": List<dynamic>.from(subcategoryId.map((x) => x)),
        "_id": id,
        "categoryType": categoryType,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}
