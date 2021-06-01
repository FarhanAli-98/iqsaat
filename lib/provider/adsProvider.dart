import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:iqsaat/models/postModels/adsModel.dart';
import 'package:iqsaat/request/addsCreate.dart';

class AdsProvider with ChangeNotifier {
  AdsModel adsModel;

  var jResult;

  Future<AdsModel> createadds(
      name, price, description, cod, jazz, packagesList, cata, subcata) async {
    await AdsApi(
            name, price, description, cod, jazz, packagesList, cata, subcata)
        .createAdds()
        .then((data) {
      print("Adds Provide Creating" + data.statusCode.toString());
      print("Body = = =  " + data.body.toString());

      if (data.statusCode == 201) {
        jResult = json.decode(data.body);
        createAd(AdsModel.fromJson(jResult));
      } else if (data.statusCode == 404) {
        Fluttertoast.showToast(
            msg: "faild to create Add",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
            );
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        print("Errors = " + result.toString());
      }
    });

    return adsModel;
  }

//   Future<GetAds> fetchedAdds() async {
//     await GetAdsApi().getMyAds().then((data) {
//       print("Status Code === " + data.statusCode.toString());
//       print("Body = = = " + data.body.toString());
//       if (data.statusCode == 200) {
//         var jResult = json.decode(data.body);
//         store(GetAds.fromJson(jResult));
//       } else if (data.statusCode == 404) {
//         Fluttertoast.showToast(
//             msg: "Faild to Fetch Adds"+data.statusCode.toString(),
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
//             );
//       }
//       else {
//         Map<String, dynamic> result = json.decode(data.body);
//         print("Errors = " + result.toString());

//       }
//     });
//     return getAds;
//   }

//  Future<GetMyAdModel> getMyAd(id) async {
//     await GetAdsApi().getMyAd(id).then((data) {
//       print("Status Code @== " + data.statusCode.toString());
//       print("Body = = = " + data.body.toString());
//       if (data.statusCode == 200) {
//         try{
//            var jResult = json.decode(data.body);
//         storeAd(GetMyAdModel.fromJson(jResult));

//         }catch(e)
//         {
//           print("Face Error ");
//         }

//       } else if (data.statusCode == 404) {
//         Fluttertoast.showToast(
//             msg: "Faild to Fetching Ad"+data.statusCode.toString(),
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
//             );
//       }
//       else if (data.statusCode == 500) {
//         Fluttertoast.showToast(
//             msg: "Ad ID Problem = "+data.statusCode.toString(),
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
//             );
//       }
//       else {
//         Map<String, dynamic> result = json.decode(data.body);
//         print("Errors = " + result.toString());

//       }
//     });
//     return getMyAdModel;
//   }

//   Future<AdsModel> updateData(
//       serviceList, productList, cod, masterCard, interac, visa) async {
//     await AddsApi(serviceList, productList, cod, masterCard, interac, visa)
//         .updateAds()
//         .then((data) {
//       print("Adds Provider Scode" + data.statusCode.toString());
//       print("Body = = =  " + data.body.toString());

//       if (data.statusCode == 200) {
//         jResult = json.decode(data.body);
//         createAd(AdsModel.fromJson(jResult));
//       } else if (data.statusCode == 404) {
//         Fluttertoast.showToast(
//             msg: "Update Failed",
//             toastLength: Toast.LENGTH_SHORT,
//             gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
//             );
//       } else {
//         Map<String, dynamic> result = json.decode(data.body);
//         print("Errors = " + result.toString());

//       }
//     });

//      return adsModel;
//   }

  void createAd(value) {
    adsModel = value;
    print("Message Updated = " + adsModel.message.toString());
    Fluttertoast.showToast(
        msg: "Add Create Seccessfully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM // also possible "TOP" and "CENTER"
        );
    notifyListeners();
  }

  // void store(value) {
  //   print("Simple");
  //   getAds = value;
  //   print("Message  = = " + getAds.message.toString());
  //   notifyListeners();
  // }

  //  void storeAd(value) {
  //   print("Simple");
  //   getMyAdModel = value;
  //   print("Single ad Message " + getMyAdModel.message.toString());
  //   notifyListeners();
  // }
}
