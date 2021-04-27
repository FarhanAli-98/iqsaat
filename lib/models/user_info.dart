import 'dart:io';





class User {
  static final User _singleton = User._internal();
  factory User() => _singleton;
  User._internal();
  static User get userData => _singleton;
  String uid;
  String accessToken;
  String refreshToken;
  String role;
  String companyAbout;
  String ads;
  String cid;
  double lat, long; 
  List<File> images=[];
  List<String> imageTitles = [];
  List<String> imageDesc = [];
  List<String> imgUrl = [];
  String adid;

}
