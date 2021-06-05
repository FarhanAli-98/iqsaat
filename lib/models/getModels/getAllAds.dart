// To parse this JSON data, do
//
//     final GetAllAds = GetAllAdsFromJson(jsonString);

import 'dart:convert';

GetAllAds welcomeFromJson(String str) => GetAllAds.fromJson(json.decode(str));

String welcomeToJson(GetAllAds data) => json.encode(data.toJson());

class GetAllAds {
    GetAllAds({
        this.message,
        this.data,
        this.success,
    });

    String message;
    List<Datum> data;
    bool success;

    factory GetAllAds.fromJson(Map<String, dynamic> json) => GetAllAds(
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        success: json["success"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "success": success,
    };
}

class Datum {
    Datum({
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
    ShopId shopId;
    CategoryId categoryId;
    SubcategoryId subcategoryId;
    OwnerId ownerId;
    DateTime createdAt;
    DateTime updatedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        packages: List<Package>.from(json["packages"].map((x) => Package.fromJson(x))),
        rating: json["rating"],
        ratings: List<dynamic>.from(json["ratings"].map((x) => x)),
        banned: json["banned"],
        bannedTill: json["bannedTill"],
        id: json["_id"],
        shopId: json["shopID"] == null ? null : ShopId.fromJson(json["shopID"]),
        categoryId: CategoryId.fromJson(json["categoryID"]),
        subcategoryId: SubcategoryId.fromJson(json["subcategoryID"]),
        ownerId: json["ownerID"] == null ? null : OwnerId.fromJson(json["ownerID"]),
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
        "shopID": shopId == null ? null : shopId.toJson(),
        "categoryID": categoryId.toJson(),
        "subcategoryID": subcategoryId.toJson(),
        "ownerID": ownerId == null ? null : ownerId.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class CategoryId {
    CategoryId({
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

    factory CategoryId.fromJson(Map<String, dynamic> json) => CategoryId(
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

class OwnerId {
    OwnerId({
        this.shopId,
        this.role,
        this.banned,
        this.bannedTill,
        this.verified,
        this.resetExpires,
        this.displayPictureUrl,
        this.likedAd,
        this.id,
        this.email,
        this.firstName,
        this.lastName,
        this.contactNumber,
        this.cnic,
        this.createdAt,
        this.updatedAt,
        this.refreshToken,
    });

    String shopId;
    String role;
    bool banned;
    dynamic bannedTill;
    bool verified;
    dynamic resetExpires;
    dynamic displayPictureUrl;
    List<dynamic> likedAd;
    String id;
    String email;
    String firstName;
    String lastName;
    String contactNumber;
    String cnic;
    DateTime createdAt;
    DateTime updatedAt;
    String refreshToken;

    factory OwnerId.fromJson(Map<String, dynamic> json) => OwnerId(
        shopId: json["shopID"],
        role: json["role"],
        banned: json["banned"],
        bannedTill: json["bannedTill"],
        verified: json["verified"],
        resetExpires: json["resetExpires"],
        displayPictureUrl: json["displayPictureURL"],
        likedAd: List<dynamic>.from(json["likedAd"].map((x) => x)),
        id: json["_id"],
        email: json["email"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        contactNumber: json["contactNumber"],
        cnic: json["cnic"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        refreshToken: json["refreshToken"],
    );

    Map<String, dynamic> toJson() => {
        "shopID": shopId,
        "role": role,
        "banned": banned,
        "bannedTill": bannedTill,
        "verified": verified,
        "resetExpires": resetExpires,
        "displayPictureURL": displayPictureUrl,
        "likedAd": List<dynamic>.from(likedAd.map((x) => x)),
        "_id": id,
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "contactNumber": contactNumber,
        "cnic": cnic,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "refreshToken": refreshToken,
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

    dynamic price;
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

class ShopId {
    ShopId({
        this.adId,
        this.logoUrl,
        this.id,
        this.name,
        this.address,
        this.about,
        this.ownerId,
        this.createdAt,
        this.updatedAt,
    });

    List<String> adId;
    dynamic logoUrl;
    String id;
    String name;
    String address;
    String about;
    String ownerId;
    DateTime createdAt;
    DateTime updatedAt;

    factory ShopId.fromJson(Map<String, dynamic> json) => ShopId(
        adId: List<String>.from(json["adID"].map((x) => x)),
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
        "adID": List<dynamic>.from(adId.map((x) => x)),
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

class SubcategoryId {
    SubcategoryId({
        this.id,
        this.categoryId,
        this.name,
        this.createdAt,
        this.updatedAt,
    });

    String id;
    String categoryId;
    String name;
    DateTime createdAt;
    DateTime updatedAt;

    factory SubcategoryId.fromJson(Map<String, dynamic> json) => SubcategoryId(
        id: json["_id"],
        categoryId: json["categoryID"],
        name: json["name"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "categoryID": categoryId,
        "name": name,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}
