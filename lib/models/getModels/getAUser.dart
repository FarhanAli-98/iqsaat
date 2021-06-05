// To parse this JSON data, do
//
//     final GetUser = GetUserFromJson(jsonString);

import 'dart:convert';

GetUser welcomeFromJson(String str) => GetUser.fromJson(json.decode(str));

String welcomeToJson(GetUser data) => json.encode(data.toJson());

class GetUser {
    GetUser({
        this.success,
        this.data,
    });

    bool success;
    Data data;

    factory GetUser.fromJson(Map<String, dynamic> json) => GetUser(
        success: json["success"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
    };
}

class Data {
    Data({
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

    dynamic shopId;
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

    factory Data.fromJson(Map<String, dynamic> json) => Data(
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
