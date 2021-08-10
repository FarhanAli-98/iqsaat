import 'package:http/http.dart' as http;
import 'package:iqsaat/api/apis.dart';
import 'package:iqsaat/hive/utils.dart';
import '../main.dart';

class GetApi {
  Future<http.Response> getUser() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };
    print("${API_URLS.GET_USER}/${res.userId}");
    // print(body.toString());
    return http.get("${API_URLS.GET_USER}/60ab904f5fbc0f267ad68e80",
        headers: customHeaders);
  }

  Future<http.Response> getCateory() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };
    print("${API_URLS.ALLCATAGORY_API}");
    return http.get("${API_URLS.ALLCATAGORY_API}", headers: customHeaders);
  }

  //   Future<http.Response> getUser() {
  //   Map<String, String> customHeaders = {
  //     "Content-Type": "application/json",
  //     "Authorization": "${Utils.getAuthentication()}",
  //   };
  //   print("${API.GET_USER}/${res.userId}");
  //   // print(body.toString());
  //   return http.get("${API.GET_USER}/${res.userId}", headers: customHeaders);
  // }

}
