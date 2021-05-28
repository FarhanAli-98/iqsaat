// To parse this JSON data, do
//
//     final AdsModel = welcomeFromJson(jsonString);

import 'dart:convert';

AdsModel welcomeFromJson (String str) => AdsModel.fromJson(json.decode(str));

String welcomeToJson(AdsModel data) => json.encode(data.toJson());

class AdsModel {
    AdsModel({
        this.success,
        this.message,
        this.data,
    });

    bool success;
    String message;
    Data data;

    factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.name,
        this.products,
        this.packages,
        this.rating,
        this.ratings,
        this.banned,
        this.bannedTill,
        this.id,
        this.shopId,
        this.categoryId,
        this.subcategoryId,
        this.ownerId,
        this.createdAt,
        this.updatedAt,
    });

    String name;
    List<Product> products;
    List<Package> packages;
    int rating;
    List<dynamic> ratings;
    bool banned;
    dynamic bannedTill;
    String id;
    String shopId;
    String categoryId;
    String subcategoryId;
    String ownerId;
    DateTime createdAt;
    DateTime updatedAt;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        packages: List<Package>.from(json["packages"].map((x) => Package.fromJson(x))),
        rating: json["rating"],
        ratings: List<dynamic>.from(json["ratings"].map((x) => x)),
        banned: json["banned"],
        bannedTill: json["bannedTill"],
        id: json["_id"],
        shopId: json["shopID"],
        categoryId: json["categoryID"],
        subcategoryId: json["subcategoryID"],
        ownerId: json["ownerID"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "packages": List<dynamic>.from(packages.map((x) => x.toJson())),
        "rating": rating,
        "ratings": List<dynamic>.from(ratings.map((x) => x)),
        "banned": banned,
        "bannedTill": bannedTill,
        "_id": id,
        "shopID": shopId,
        "categoryID": categoryId,
        "subcategoryID": subcategoryId,
        "ownerID": ownerId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class Package {
    Package({
        this.price,
        this.monthyinstallment,
    });

    int price;
    int monthyinstallment;

    factory Package.fromJson(Map<String, dynamic> json) => Package(
        price: json["price"],
        monthyinstallment: json["monthyinstallment"],
    );

    Map<String, dynamic> toJson() => {
        "price": price,
        "monthyinstallment": monthyinstallment,
    };
}

class Product {
    Product({
        this.price,
        this.description,
    });

    int price;
    String description;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        price: json["price"],
        description: json["description"],
    );

    Map<String, dynamic> toJson() => {
        "price": price,
        "description": description,
    };
}
