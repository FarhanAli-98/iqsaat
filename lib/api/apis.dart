// ignore: camel_case_types
import 'config.dart';

// ignore: camel_case_types
class API_URLS {
  //auth
  static const String LOGIN_API = "$API_URL/auth/login";
  static const String INVITE_API = "$API_URL/price/estimate";
  static const String SIGNUP_API = "$API_URL/auth/signup";
  static const String VERIFICATION_API = "$API_URL/auth/users/activation_code/";
  static const String RESETPASS1_API = "$API_URL/auth/forgot";
  static const String IMAGEUPLOAD_API = "$API_URL/images/company";

  static const PROFILESTEUP_API = "$API_URL/account/my-profile/";
  static const CREATESHOP_API = "$API_URL/shop";
  static const CREATEADS_API = "$API_URL/ads";
  static const ALLCATAGORY_API = "$API_URL/category";
  static const GETADS_API = "$API_URL/ads/all/";
  static const UPLOAD_IMAGE_ADS_API = "$API_URL/images/ads";
  static const ADS_API = "$API_URL/ads";
  static const DELETE_IMG = "$API_URL/images/ads";
  static const GET_USER = "$API_URL/users";
  static const LIVE_AD = "$API_URL/live";
  static const CONTACT = "$API_URL/contact";
  static const CHAT = "$API_URL/message";
  static const JOB_REQUEST = "$API_URL/job";
  static const GETACOMPANY_API = "$API_URL/company";
  static const GETMYREVIEWS_API = "$API_URL/rating/my";
  static const SENDREVIEWS_API = "$API_URL/rating";

  //Images
  static const PROFILE_IMAGE_API = "$API_URL/image/profile";
  static const CNIC_IMAGE_API = "$API_URL/image/cnic";
  static const VEHICLE_IMAGE_API = "$API_URL/image/vehicle";
  static const WORKPERMIT_IMAGE_API = "$API_URL/image/workpermit";
  static const DNI_IMAGE_API = "$API_URL/image/dni";
  static const EBAN_IMAGE_API = "$API_URL/image/eban";
  static const DNIROUTER_IMAGE_API = "$API_URL/image/dnirouter";

  static const CHAT_SOCKET = CHAT_SOCKET_URL;
  static const LOCATION_SOCKET = LOCATION_SOCKET_URL;
  static const JOB_SOCKET = JOB_SOCKET_URL;
}


// class API {
//   /*------------------------------------------------------------
//                           API URL
//   -------------------------------------------------------------*/
//    static const String API_URL = "https://iqsaat.herokuapp.com/api";

//   //static const String API_URL = "http://10.0.3.2/api";
//   // static const String API_URL = "http://192.168.1.10/api";
//  // static const String API_URL = "http://localhost/api";

//   /*------------------------------------------------------------
//                   LOGIN API: LOGIN API
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String LOGIN_API = "$API_URL/auth/login";

  

//   /*------------------------------------------------------------
//                   LOGIN API: Checking name Availability API
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String CHECKNAME_API = "$API_URL/auth/users/username_available/";

//   /*------------------------------------------------------------
//                   LOGIN API: Signup API
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String SIGNUP_API = "$API_URL/auth/signup";

//   /*------------------------------------------------------------
//                   LOGIN API: Verfication Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String VERIFICATION_API = "$API_URL/auth/users/activation_code/";
//   /*------------------------------------------------------------
//                   LOGIN API: Reset Passwrod email  Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String RESETPASS1_API = "$API_URL/auth/forgot";
//   /*------------------------------------------------------------
//                   LOGIN API: Image upload  Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String IMAGEUPLOAD_API = "$API_URL/images/company";

//   /*------------------------------------------------------------
//                   LOGIN API: Profile setup  Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String PROFILESTEUP_API = "$API_URL/account/my-profile/";

//   /*------------------------------------------------------------
//                   LOGIN API: Profile Image upload  Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String PROFILEIMAGE_API = "$API_URL/images/profile";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   LOGIN API: CREATE COMPANY Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String CREATESHOP_API = "$API_URL/shop";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   All Category API: All Category Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String CATAGORY_API = "$API_URL/category";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   All Category API: All Category Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String GET_A_CATEGORY_API = "$API_URL/category/";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Create API: Ads Creation Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String CREATEADS_API = "$API_URL/ads";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Ads API: Get All Ads Api
//                         TYPE: GET
//   -------------------------------------------------------------*/
//   static const String GETADS_API = "$API_URL/ads/all/";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Ads API: My Ads Api
//                         TYPE: GET
//   -------------------------------------------------------------*/
//   static const String ADS_API = "$API_URL/ads/";

//   /*------------------------------------------------------------*/

//     /*------------------------------------------------------------
//                   Ads API: Single Ad Api
//                         TYPE: GET
//   -------------------------------------------------------------*/
//   static const String MYAD_API = "$API_URL/ads/";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Ads API: upload images of Ads Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String UPLOAD_IMAGE_ADS_API = "$API_URL/images/ads";


//   /*------------------------------------------------------------
//                   Ads API: upload images of Ads Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String DELETE_IMG = "$API_URL/images/ads";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Ads API: upload images of Ads Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String GET_USER = "$API_URL/users";

//   /*------------------------------------------------------------*/
//   /*------------------------------------------------------------
//                   Ads API: Live Ad Ads Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String LIVE_AD = "$API_URL/live";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Ads API: Context Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String CONTACT = "$API_URL/contact";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Ads API: Chat Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String CHAT = "$API_URL/message";

//   /*------------------------------------------------------------*/

//   /*------------------------------------------------------------
//                   Ads API: Chat Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String JOB_REQUEST = "$API_URL/job";
//   /*------------------------------------------------------------
//                   Ads API: Get A Company Api
//                         TYPE: GET
//   -------------------------------------------------------------*/
//   static const String GETACOMPANY_API = "$API_URL/company";

//   /*------------------------------------------------------------*/

//     /*------------------------------------------------------------
//                   Ads API: Get My Reviews Api
//                         TYPE: GET
//   -------------------------------------------------------------*/
//   static const String GETMYREVIEWS_API = "$API_URL/rating/my";

//   /*------------------------------------------------------------*/

//       /*------------------------------------------------------------
//                   Ads API: Send Reviews Api
//                         TYPE: POST
//   -------------------------------------------------------------*/
//   static const String SENDREVIEWS_API = "$API_URL/rating";

//   /*------------------------------------------------------------*/
// }
