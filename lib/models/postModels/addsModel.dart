
import 'dart:convert';

AdsModel welcomeFromJson(String str) => AdsModel.fromJson(json.decode(str));

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
        this.services,
        this.paymentModes,
        this.products,
        this.images,
        this.videos,
        this.banned,
        this.bannedTill,
        this.imageTitles,
        this.imageDescriptions,
        this.videoTitles,
        this.videoDescriptions,
        this.id,
        this.company,
        this.user,
        this.createdAt,
        this.updatedAt,
    });

    List<Service> services;
    List<String> paymentModes;
    List<Product> products;
    List<dynamic> images;
    List<dynamic> videos;
    bool banned;
    dynamic bannedTill;
    List<String> imageTitles;
    List<String> imageDescriptions;
    List<String> videoTitles;
    List<String> videoDescriptions;
    String id;
    String company;
    String user;
    DateTime createdAt;
    DateTime updatedAt;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        services: List<Service>.from(json["services"].map((x) => Service.fromJson(x))),
        paymentModes: List<String>.from(json["payment_modes"].map((x) => x)),
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
        images: List<dynamic>.from(json["images"].map((x) => x)),
        videos: List<dynamic>.from(json["videos"].map((x) => x)),
        banned: json["banned"],
        bannedTill: json["bannedTill"],
        imageTitles: List<String>.from(json["imageTitles"].map((x) => x)),
        imageDescriptions: List<String>.from(json["imageDescriptions"].map((x) => x)),
        videoTitles: List<String>.from(json["videoTitles"].map((x) => x)),
        videoDescriptions: List<String>.from(json["videoDescriptions"].map((x) => x)),
        id: json["_id"],
        company: json["company"],
        user: json["user"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "services": List<dynamic>.from(services.map((x) => x.toJson())),
        "payment_modes": List<dynamic>.from(paymentModes.map((x) => x)),
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x)),
        "videos": List<dynamic>.from(videos.map((x) => x)),
        "banned": banned,
        "bannedTill": bannedTill,
        "imageTitles": List<dynamic>.from(imageTitles.map((x) => x)),
        "imageDescriptions": List<dynamic>.from(imageDescriptions.map((x) => x)),
        "videoTitles": List<dynamic>.from(videoTitles.map((x) => x)),
        "videoDescriptions": List<dynamic>.from(videoDescriptions.map((x) => x)),
        "_id": id,
        "company": company,
        "user": user,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
    };
}

class Product {
    Product({
        this.name,
        this.currency,
        this.price,
    });

    String name;
    String currency;
    String price;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        name: json["name"],
        currency: json["currency"],
        price: json["price"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "currency": currency,
        "price": price,
    };
}

class Service {
    Service({
        this.name,
        this.currency,
        this.price,
        this.unit,
        this.travel,
        this.travelRate,
        this.minCharge,
    });

    String name;
    String currency;
    String price;
    String unit;
    String travel;
    String travelRate;
    String minCharge;

    factory Service.fromJson(Map<String, dynamic> json) => Service(
        name: json["name"],
        currency: json["currency"],
        price: json["price"],
        unit: json["unit"],
        travel: json["travel"],
        travelRate: json["travel_rate"],
        minCharge: json["min_charge"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "currency": currency,
        "price": price,
        "unit": unit,
        "travel": travel,
        "travel_rate": travelRate,
        "min_charge": minCharge,
    };
}
