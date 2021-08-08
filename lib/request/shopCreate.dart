import 'dart:convert';
import 'dart:io';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:iqsaat/api/apis.dart';
import '../main.dart';

final tokens = Hive.box('tokens');

class ShopApi {
  final String companyName;
  final String address;
  final String about;
  final File file;
  ShopApi(this.file, this.companyName, this.address, this.about);


  Future<http.Response> createShop() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
       "Authorization": "Bearer ${res.accessToken} ",
     
    };
    print(customHeaders);
    var body = {
      "name": "$companyName",
      "address": "$address",
      "about": "$about",
     
   
    };
    //print("ID = "+.toString());
    print("Adds Data getten is = = = = " + json.encode(body));
    print("Signup create At ?? this link${API_URLS.CREATESHOP_API}");
    return http.post(
      "${API_URLS.CREATESHOP_API}",
      headers: customHeaders,
      body: json.encode(body),
    );
  }

  // Future<http.StreamedResponse> createShop() async {
  //   var stream, length, multipartFile;
  //   Map<String, String> headers = ({
  //     "Content-Type": "multipart/form-data",
  //     "Authorization": "Bearer ${res.accessToken} ",
  //   });
  //   print('starting to send the file');
  //   print("Sendiing Header is  = " + headers.toString());
  //   print("Name??????? =$companyName $address  $about ");
  //   // string to uri
  //   var uri = Uri.parse("${API.CREATESHOP_API}");
  //   print("URI =  = = " + uri.toString());
  //   // create multipart request
  //   var request = new http.MultipartRequest("POST", uri);
  //   request.fields['name'] = '$companyName';
  //   request.fields['about'] = '$about';
  //   request.fields['address'] = '$address';
  //   request.headers.addAll(headers);
  //   if (file != null) {
  //     // ignore: deprecated_member_use
  //     stream = new http.ByteStream(DelegatingStream.typed(file.openRead()));
  //     // get file length
  //     length = await file.length();
  //     // multipart that takes file
  //     multipartFile = new http.MultipartFile('file', stream, length,
  //         filename: file.path.split('/').last);

  //     // add file to multipart
  //     request.files.add(multipartFile);
  //   }

  //   // send
  //   return await request.send();
  //   // print("Status code  = ");
  // }
}
