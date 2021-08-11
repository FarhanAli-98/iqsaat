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

    List<AdId> adId;
    dynamic logoUrl;
    String id;
    String name;
    String address;
    String about;
    OwnerId ownerId;
    DateTime createdAt;
    DateTime updatedAt;

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        adId: List<AdId>.from(json["adID"].map((x) => AdId.fromJson(x))),
        logoUrl: json["logoURL"],
        id: json["_id"],
        name: json["name"],
        address: json["address"],
        about: json["about"],
        ownerId: OwnerId.fromJson(json["ownerID"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "adID": List<dynamic>.from(adId.map((x) => x.toJson())),
        "logoURL": logoUrl,
        "_id": id,
        "name": name,
        "address": address,
        "about": about,
        "ownerID": ownerId.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class AdId {
    AdId({
        this.name,
        this.likelist,
        this.products,
        this.packages,
        this.images,
        this.displayPicture,
        this.rating,
        this.ratings,
        this.banned,
        this.bannedTill,
        this.id,
        this.shopId,
        this.ownerId,
        this.createdAt,
        this.updatedAt,
    });

    String name;
    List<dynamic> likelist;
    List<Product> products;
    List<Package> packages;
    List<dynamic> images;
    List<dynamic> displayPicture;
    int rating;
    List<dynamic> ratings;
    bool banned;
    dynamic bannedTill;
    String id;
    String shopId;
    String ownerId;
    DateTime createdAt;
    DateTime updatedAt;

    factory AdId.fromJson(Map<String, dynamic> json) => AdId(
        name: json["name"],
        likelist: List<dynamic>.from(json["likelist"].map((x) => x)),
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        packages: List<Package>.from(json["packages"].map((x) => Package.fromJson(x))),
        images: List<dynamic>.from(json["images"].map((x) => x)),
        displayPicture: List<dynamic>.from(json["displayPicture"].map((x) => x)),
        rating: json["rating"],
        ratings: List<dynamic>.from(json["ratings"].map((x) => x)),
        banned: json["banned"],
        bannedTill: json["bannedTill"],
        id: json["_id"],
        shopId: json["shopID"],
        ownerId: json["ownerID"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "likelist": List<dynamic>.from(likelist.map((x) => x)),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "packages": List<dynamic>.from(packages.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x)),
        "displayPicture": List<dynamic>.from(displayPicture.map((x) => x)),
        "rating": rating,
        "ratings": List<dynamic>.from(ratings.map((x) => x)),
        "banned": banned,
        "bannedTill": bannedTill,
        "_id": id,
        "shopID": shopId,
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

    String price;
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
        this.firstName,
        this.lastName,
        this.contactNumber,
        this.cnic,
        this.email,
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
    String firstName;
    String lastName;
    String contactNumber;
    String cnic;
    String email;
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
        firstName: json["firstName"],
        lastName: json["lastName"],
        contactNumber: json["contactNumber"],
        cnic: json["cnic"],
        email: json["email"],
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
        "firstName": firstName,
        "lastName": lastName,
        "contactNumber": contactNumber,
        "cnic": cnic,
        "email": email,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "refreshToken": refreshToken,
    };
}
