// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

UserListObj welcomeFromJson(String str) => UserListObj.fromJson(json.decode(str));

String welcomeToJson(UserListObj data) => json.encode(data.toJson());

class UserListObj {
    UserListObj({
        this.success,
        this.data,
    });

    bool success;
    List<User> data;

    factory UserListObj.fromJson(Map<String, dynamic> json) => UserListObj(
        success: json["success"],
        data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class User {
    User({
        this.shopId,
        this.role,
        this.banned,
        this.bannedTill,
        this.verified,
        this.resetExpires,
        this.displayPictureId,
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

    dynamic shopId;
    String role;
    bool banned;
    dynamic bannedTill;
    bool verified;
    dynamic resetExpires;
    dynamic displayPictureId;
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

    factory User.fromJson(Map<String, dynamic> json) => User(
        shopId: json["shopID"],
        role: json["role"],
        banned: json["banned"],
        bannedTill: json["bannedTill"],
        verified: json["verified"],
        resetExpires: json["resetExpires"],
        displayPictureId: json["displayPictureID"],
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
        "displayPictureID": displayPictureId,
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
