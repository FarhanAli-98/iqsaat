import 'dart:io';
import 'dart:typed_data';





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
  
  List<File> images;
  List<String> imageTitles = List<String>();
  List<String> imageDesc = List<String>();
 // List<ImageModel> imageList = List<ImageModel>();
  List<String> videoTitles=List();
  List<String> videoDescriptions=List();
  List<String> imgUrl = List();
  Uint8List video1;
  Uint8List video2;
  Uint8List video3;

  String adid;
  static String companyabout;
}
