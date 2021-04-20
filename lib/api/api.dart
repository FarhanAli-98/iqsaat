class API {
  /*------------------------------------------------------------
                          API URL
  -------------------------------------------------------------*/
   //static const String API_URL = "https://giraffe-app.com/api";

  //static const String API_URL = "http://10.0.2.2/api";
   static const String API_URL = "http://192.168.1.10/api";
  //static const String API_URL = "http://127.0.0.1:43153/YeZlVOjpVO8=/";

  /*------------------------------------------------------------
                  LOGIN API: LOGIN API
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String LOGIN_API = "$API_URL/auth/login";

  

  /*------------------------------------------------------------
                  LOGIN API: Checking name Availability API
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String CHECKNAME_API = "$API_URL/auth/users/username_available/";

  /*------------------------------------------------------------
                  LOGIN API: Signup API
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String SIGNUP_API = "$API_URL/auth/signup";

  /*------------------------------------------------------------
                  LOGIN API: Verfication Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String VERIFICATION_API = "$API_URL/auth/users/activation_code/";
  /*------------------------------------------------------------
                  LOGIN API: Reset Passwrod email  Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String RESETPASS1_API = "$API_URL/auth/forgot";
  /*------------------------------------------------------------
                  LOGIN API: Image upload  Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String IMAGEUPLOAD_API = "$API_URL/images/company";

  /*------------------------------------------------------------
                  LOGIN API: Profile setup  Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String PROFILESTEUP_API = "$API_URL/account/my-profile/";

  /*------------------------------------------------------------
                  LOGIN API: Profile Image upload  Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String PROFILEIMAGE_API = "$API_URL/images/profile";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  LOGIN API: CREATE COMPANY Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String CREATECOMPANY_API = "$API_URL/company";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  All Category API: All Category Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String ALLCATAGORY_API = "$API_URL/category";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  All Category API: All Category Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String GET_A_CATEGORY_API = "$API_URL/category/";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Create API: Ads Creation Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String CREATEADS_API = "$API_URL/ads";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Ads API: Get All Ads Api
                        TYPE: GET
  -------------------------------------------------------------*/
  static const String GETADS_API = "$API_URL/ads/all/";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Ads API: My Ads Api
                        TYPE: GET
  -------------------------------------------------------------*/
  static const String MYADS_API = "$API_URL/ads/";

  /*------------------------------------------------------------*/

    /*------------------------------------------------------------
                  Ads API: Single Ad Api
                        TYPE: GET
  -------------------------------------------------------------*/
  static const String MYAD_API = "$API_URL/ads/";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Ads API: upload images of Ads Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String UPLOAD_IMAGE_ADS_API = "$API_URL/images/ads";


  /*------------------------------------------------------------
                  Ads API: upload images of Ads Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String DELETE_IMG = "$API_URL/images/ads";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Ads API: upload images of Ads Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String GET_USER = "$API_URL/users";

  /*------------------------------------------------------------*/
  /*------------------------------------------------------------
                  Ads API: Live Ad Ads Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String LIVE_AD = "$API_URL/live";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Ads API: Context Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String CONTACT = "$API_URL/contact";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Ads API: Chat Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String CHAT = "$API_URL/message";

  /*------------------------------------------------------------*/

  /*------------------------------------------------------------
                  Ads API: Chat Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String JOB_REQUEST = "$API_URL/job";
  /*------------------------------------------------------------
                  Ads API: Get A Company Api
                        TYPE: GET
  -------------------------------------------------------------*/
  static const String GETACOMPANY_API = "$API_URL/company";

  /*------------------------------------------------------------*/

    /*------------------------------------------------------------
                  Ads API: Get My Reviews Api
                        TYPE: GET
  -------------------------------------------------------------*/
  static const String GETMYREVIEWS_API = "$API_URL/rating/my";

  /*------------------------------------------------------------*/

      /*------------------------------------------------------------
                  Ads API: Send Reviews Api
                        TYPE: POST
  -------------------------------------------------------------*/
  static const String SENDREVIEWS_API = "$API_URL/rating";

  /*------------------------------------------------------------*/
}