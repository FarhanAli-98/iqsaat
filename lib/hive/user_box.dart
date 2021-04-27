import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
part 'user_box.g.dart';

@HiveType(typeId: 1)
class UserBox {
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String firstName;
  @HiveField(2)
  final String lastName;

  @HiveField(3)
  final String photo;
  @HiveField(4)
  final String accessToken;
  @HiveField(5)
  final String refreshToken;
  @HiveField(6)
  final String userId;
  @HiveField(7)
  final String shopId;
  @HiveField(8)
  final String role;
  @HiveField(9)
  final String cnic;
  @HiveField(10)
  final String phone;

  UserBox({
    @required this.email,
    @required this.firstName,
    @required this.lastName,
    @required this.photo,
    @required this.accessToken,
    @required this.refreshToken,
    @required this.userId,
    @required this.shopId,
    @required this.role,
    @required this.cnic,
    @required this.phone,
  });
}

//flutter pub run build_runner build
