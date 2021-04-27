// To parse this JSON data, do
//
//     final LoginModel = LoginModelFromJson(jsonString);


import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

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

    factory User.fromJson(Map<String, dynamic> json) => User(
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
