// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return LoginModel(
    success: json['success'] as bool,
    message: json['message'] as String,
    data: json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

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
    role: json['role'] as String,
    banned: json['banned'] as bool,
    bannedTill: json['bannedTill'],
    verified: json['verified'] as bool,
    resetExpires: json['resetExpires'],
    displayPictureUrl: json['displayPictureUrl'],
    likedAd: json['likedAd'] as List,
    id: json['id'] as String,
    email: json['email'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    contactNumber: json['contactNumber'] as String,
    cnic: json['cnic'] as String,
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
      'role': instance.role,
      'banned': instance.banned,
      'bannedTill': instance.bannedTill,
      'verified': instance.verified,
      'resetExpires': instance.resetExpires,
      'displayPictureUrl': instance.displayPictureUrl,
      'likedAd': instance.likedAd,
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'contactNumber': instance.contactNumber,
      'cnic': instance.cnic,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'refreshToken': instance.refreshToken,
    };
