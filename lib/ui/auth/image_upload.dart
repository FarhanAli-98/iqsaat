// ignore: camel_case_types
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:iqsaat/provider/signup_provider.dart';

import 'loginPage.dart';

// ignore: camel_case_types
class ImagesUpload {
  static uploadImage(File file, String api,) async {
    // ignore: unused_local_variable
    RegisterProvider registerProvider;
    Map<String, String> headers = ({
      "Content-Type": "multipart/form-data",
      // "Authorization": "Bearer ${registerProvider.signUpModel.data.} ",
      "Authorization":
          "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxMTBjYmE5YzJlZDhmMDAxYTVlNjJkMCIsInJvbGUiOiJzZWxsZXIiLCJpYXQiOjE2Mjg0OTA3MzksImV4cCI6MTYzMTA4MjczOX0.Bw0HSUJdVx9uqZjf6pObePB5IzebBPws6Nkzmab21V0",
    });
    print('starting to send the file');
    print("Sendiing Header is  = " + headers.toString());
    // ignore: deprecated_member_use
    var stream = new http.ByteStream(DelegatingStream.typed(file.openRead()));
    // get file length
    var length = await file.length();

    // string to uri

    // var uri = Uri.parse("$api/${box.userId}");
    var uri = Uri.parse("$api");

    print("URI =  = = " + uri.toString());
    // create multipart request
    var request = new http.MultipartRequest("POST", uri);
    request.headers.addAll(headers);

    // multipart that takes file
    var multipartFile = new http.MultipartFile('file', stream, length,
        filename: file.path.split('/').last);

    // add file to multipart
    request.files.add(multipartFile);

    // send
    var response = await request.send();
    // print("Status code  = ");
    print(response.statusCode);
    response.stream.transform(utf8.decoder).listen((value) {
      var result = jsonDecode(value);
      print(result.toString());

      if (result["success"] == true) {
       
        showMessage(result["message"]);
      } else {
        showMessage("Problem Faced");
      }
    });
  }
}
