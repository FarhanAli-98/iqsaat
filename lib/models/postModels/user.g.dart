// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: unused_element
LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return LoginModel(
    success: json['success'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

// ignore: unused_element
Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

// ignore: unused_element
Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    accessToken: json['accessToken'] as String,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'user': instance.user?.toJson(),
      'accessToken': instance.accessToken,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    shopId: json['shopId'] as String,
    role: json['role'] as String,
    banned: json['banned'] as bool,
    bannedTill: json['bannedTill'],
    verified: json['verified'] as bool,
    resetExpires: json['resetExpires'],
    displayPictureUrl: json['displayPictureUrl'],
    likedAd: json['likedAd'] as List,
    id: json['id'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    contactNumber: json['contactNumber'] as String,
    cnic: json['cnic'] as String,
    email: json['email'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    refreshToken: json['refreshToken'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'shopId': instance.shopId,
      'role': instance.role,
      'banned': instance.banned,
      'bannedTill': instance.bannedTill,
      'verified': instance.verified,
      'resetExpires': instance.resetExpires,
      'displayPictureUrl': instance.displayPictureUrl,
      'likedAd': instance.likedAd,
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'contactNumber': instance.contactNumber,
      'cnic': instance.cnic,
      'email': instance.email,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'refreshToken': instance.refreshToken,
    };
