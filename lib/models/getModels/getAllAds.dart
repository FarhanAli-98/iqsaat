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
    List<Image> images;
    List<dynamic> displayPicture;
    int rating;
    List<dynamic> ratings;
    bool banned;
    dynamic bannedTill;
    String id;
    dynamic shopId;
    OwnerId ownerId;
    DateTime createdAt;
    DateTime updatedAt;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        name: json["name"],
        likelist: List<dynamic>.from(json["likelist"].map((x) => x)),
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        packages: List<Package>.from(json["packages"].map((x) => Package.fromJson(x))),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        displayPicture: List<dynamic>.from(json["displayPicture"].map((x) => x)),
        rating: json["rating"],
        ratings: List<dynamic>.from(json["ratings"].map((x) => x)),
        banned: json["banned"],
        bannedTill: json["bannedTill"],
        id: json["_id"],
        shopId: json["shopID"],
        ownerId: OwnerId.fromJson(json["ownerID"]),
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "likelist": List<dynamic>.from(likelist.map((x) => x)),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "packages": List<dynamic>.from(packages.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "displayPicture": List<dynamic>.from(displayPicture.map((x) => x)),
        "rating": rating,
        "ratings": List<dynamic>.from(ratings.map((x) => x)),
        "banned": banned,
        "bannedTill": bannedTill,
        "_id": id,
        "shopID": shopId,
        "ownerID": ownerId.toJson(),
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class Image {
    Image({
        this.fieldname,
        this.originalname,
        this.encoding,
        this.mimetype,
        this.id,
        this.filename,
        this.metadata,
        this.bucketName,
        this.chunkSize,
        this.size,
        this.md5,
        this.uploadDate,
        this.contentType,
    });

    String fieldname;
    String originalname;
    String encoding;
    String mimetype;
    String id;
    String filename;
    dynamic metadata;
    String bucketName;
    int chunkSize;
    int size;
    String md5;
    DateTime uploadDate;
    String contentType;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        fieldname: json["fieldname"],
        originalname: json["originalname"],
        encoding: json["encoding"],
        mimetype: json["mimetype"],
        id: json["id"],
        filename: json["filename"],
        metadata: json["metadata"],
        bucketName: json["bucketName"],
        chunkSize: json["chunkSize"],
        size: json["size"],
        md5: json["md5"],
        uploadDate: DateTime.parse(json["uploadDate"]),
        contentType: json["contentType"],
    );

    Map<String, dynamic> toJson() => {
        "fieldname": fieldname,
        "originalname": originalname,
        "encoding": encoding,
        "mimetype": mimetype,
        "id": id,
        "filename": filename,
        "metadata": metadata,
        "bucketName": bucketName,
        "chunkSize": chunkSize,
        "size": size,
        "md5": md5,
        "uploadDate": uploadDate.toIso8601String(),
        "contentType": contentType,
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
        this.displayPictureId,
    });

    String shopId;
    String role;
    bool banned;
    dynamic bannedTill;
    bool verified;
    dynamic resetExpires;
    String displayPictureUrl;
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
    String displayPictureId;

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
        displayPictureId: json["displayPictureID"],
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
        "displayPictureID": displayPictureId,
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
