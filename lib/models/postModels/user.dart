// To parse this JSON data, do
//
//     final LoginModel = LoginModelFromJson(jsonString);


import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

//flutter pub run build_runner build --delete-conflicting-outputs

LoginModel welcomeFromJson(String str) => LoginModel.fromJson(json.decode(str));

String welcomeToJson(LoginModel data) => json.encode(data.toJson());
@JsonSerializable(explicitToJson: true)
class LoginModel {
    LoginModel({
        this.success,
        this.message,
        this.data,
    });

    bool success;
    String message;
    Data data;

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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
@JsonSerializable(explicitToJson: true)
class Data {
    Data({
        this.user,
        this.accessToken,
    });

    User user;
    String accessToken;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: User.fromJson(json["user"]),
        accessToken: json["accessToken"],
    );

    Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "accessToken": accessToken,
    };
}
@JsonSerializable(explicitToJson: true)
class User {
    User({
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

    factory User.fromJson(Map<String, dynamic> json) => User(
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
