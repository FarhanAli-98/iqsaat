import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:iqsaat/api/apis.dart';
import 'package:iqsaat/ui/auth/image_upload.dart';
import 'package:iqsaat/ui/auth/loginPage.dart';

class RegisterApi {
  final String firstName;
  final String lastName;
  final String phone;
  final String cnic;
  final String email;
  final String password;
  final String role;
  final File file;

  RegisterApi(this.firstName, this.lastName, this.phone, this.cnic, this.email,
      this.password, this.role, this.file);

  Future<http.Response> createUser() {
    Map<String, String> customHeaders = {
      "Content-Type": "application/json",
    };
    print(customHeaders);
    var body = {
      "firstName": "$firstName",
      "lastName": "$lastName",
      "contactNumber": "$phone",
      "cnic": "$cnic",
      "email": "$email",
      "password": "$password",
      "role": "$role",
    };
    try{
            ImagesUpload.uploadImage(
                file,  API_URLS.PROFILE_IMAGE_API,);

    }catch(e){
      showMessage(e.toString());
    }
    //print("ID = "+.toString());
    print("Adds Data getten is = = = = " + json.encode(body));
    print("Signup create At ?? this link${API_URLS.SIGNUP_API}");
    return http.post(
      "${API_URLS.SIGNUP_API}",
      headers: customHeaders,
      body: json.encode(body),
    );
  }

  // Future<http.StreamedResponse> createUser() async {
  //   var stream, length, multipartFile;
  //   Map<String, String> headers = ({
  //     "Content-Type": "multipart/form-data",
  //   });
  //   print('starting to send the file');
  //   print("Sendiing Header is  = " + headers.toString());

  //   // string to uri
  //   var uri = Uri.parse("${API.SIGNUP_API}");
  //   print("URI =  = = " + uri.toString());
  //   // create multipart request
  //   var request = new http.MultipartRequest("POST", uri);

  //   request.fields['firstName'] = 'firstName';
  //   request.fields['lastName'] = 'lastName';
  //   request.fields['address'] = 'address';
  //   request.fields['phone'] = 'phone';
  //   request.fields['cnic'] = 'nic';
  //   request.fields['email'] = 'email';
  //   request.fields['password'] = 'password';
  //   request.fields['role'] = 'seller';
  //   request.headers.addAll(headers);
  //   print("Headers"+headers.toString());
  //   print(request.toString());
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
  //   else {
  //     print("File Nukk");
  //   }

  //   // send
  //   return await request.send();

  // }
}
