// To parse this JSON data, do
//
//     final SignUpModel = SignUpModelFromJson(jsonString);

import 'dart:convert';

SignUpModel welcomeFromJson(String str) => SignUpModel.fromJson(json.decode(str));

String welcomeToJson(SignUpModel data) => json.encode(data.toJson());

class SignUpModel {
    SignUpModel({
        this.success,
        this.message,
        this.details,
        this.data,
    });

    bool success;
    String message;
    String details;
    Data data;

    factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        success: json["success"],
        message: json["message"],
        details: json["details"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "details": details,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.id,
        this.email,
    });

    String id;
    String email;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
    };
}
