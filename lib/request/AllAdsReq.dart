import 'package:http/http.dart' as http;
import 'package:iqsaat/api/apis.dart';
import 'package:iqsaat/hive/utils.dart';
import '../main.dart';

class GetAdsApi {
  Future<http.Response> getads() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };

    return http.get("${API_URLS.GETADS_API}", headers: customHeaders);
  }

  Future<http.Response> getAllAds() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };
    print("${API_URLS.ADS_API}/${Utils.getUserid()}");
    return http.get("${API_URLS.ADS_API}/all", headers: customHeaders);
  }

  Future<http.Response> getUser() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };
    print("${API_URLS.GET_USER}/${Utils.getUserid}");
    return http.get("${API_URLS.GET_USER}/${Utils.getUserid}",
        headers: customHeaders);
  }

  Future<http.Response> getMyAd(String id) {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "${Utils.getAuthentication()}",
    };

    print("Sending iD =? " + id.toString());
    return http.get("${API_URLS.ADS_API}/$id", headers: customHeaders);
  }

  Future<http.Response> getSingleCompany() async {
    Map<String, String> customHeaders = {
      "Authorization": "${Utils.getAuthentication()}",
    };
    print("${API_URLS.CREATESHOP_API}/${res.shopId}");
    return http.get("${API_URLS.CREATESHOP_API}/${res.shopId}",
        headers: customHeaders);
  }
}
