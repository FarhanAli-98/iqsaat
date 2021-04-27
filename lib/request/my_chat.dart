import 'package:http/http.dart' as http;


class ChatApi {
  final String senderID;

  ChatApi(this.senderID);
  Future<http.Response> getMychat() {
    Map<String, String> customHeaders = {
      "Authorization": "Bearer Token}",
    };
    print("Headers = " + customHeaders.toString());

    return http.get("http://10.0.2.2/api/message/$senderID",
        headers: customHeaders);

    //return http.get("${API.ALLCATAGORY_API}", headers: customHeaders);
  }
}

class MyChatsApi {
  Future<http.Response> getMychats() {
    Map<String, String> customHeaders = {
      "Authorization": "Bearer Token}",
    };
    print("Headers = " + customHeaders.toString());

    return http.get("http://10.0.2.2/api/message",
        headers: customHeaders);

    //return http.get("${API.ALLCATAGORY_API}", headers: customHeaders);
  }
}
