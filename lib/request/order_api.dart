import 'package:http/http.dart' as http;
import 'package:iqsaat/api/apis.dart';
import 'package:iqsaat/main.dart';

class OrderApi {
  final String id;

  OrderApi(
    this.id,
  );

  Future<http.Response> order() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
      "Authorization": "Bearer ${res.accessToken}"
    };
    print(customHeaders);
    print("${API_URLS.ORDER_API}?id=$id");
    
    return http.post("${API_URLS.ORDER_API}?id=$id", headers: customHeaders);
  }
}
