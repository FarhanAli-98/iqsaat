

// int length = tokens.length;
// final data = tokens.getAt(length - 1) as UserToken;

import '../main.dart';

class Utils {
  static String getAuthentication() {
    return "Bearer ${res.accessToken}";
  }

  static String getUserid() {
    //return data.userid;
    return res.userId;
  }

  static String getrole() {
    // return data.role;
    return res.role;
  }

  static String getrftoken() {
    return res.refreshToken;
  }
}
