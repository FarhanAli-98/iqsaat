import 'package:http/http.dart' as http;
import 'package:iqsaat/api/api.dart';
import 'package:iqsaat/hive/utils.dart';

class GetAdsApi {



  Future<http.Response> getads() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };

    // print(body.toString());
    return http.get("${API.GETADS_API}", headers: customHeaders);
  }




  Future<http.Response> getAllAds() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };
    print("${API.ADS_API}/${Utils.getUserid()}");
    // print(body.toString());
    return http.get("${API.ADS_API}/all", headers: customHeaders);
  }

    Future<http.Response> getUser() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };
    print("${API.GET_USER}/${Utils.getUserid}");
    // print(body.toString());
    return http.get("${API.GET_USER}/${Utils.getUserid}", headers: customHeaders);
  }

  

  Future<http.Response> getMyAd(String id) {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };

    print("Sending iD =? " + id.toString());
    return http.get("${API.MYAD_API}/$id", headers: customHeaders);
  }
}
