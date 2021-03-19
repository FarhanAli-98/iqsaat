class UserSignupDataModel {
  final String email;
  final String username;

  UserSignupDataModel({this.email, this.username});

  factory UserSignupDataModel.fromJson(Map<String, dynamic> json) {
    return UserSignupDataModel(
      email: json['email'],
      username: json['username'],
    );
  }
}

class UserDataModel {
  final String token;
  final String refreshToken;
  final UserResult userResult;

  UserDataModel({this.token, this.refreshToken, this.userResult});

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
        token: json['token'],
        refreshToken: json['refresh_token'],
        

        userResult: UserResult.fromJson(json['user']));
  }
}

class UserResult {
  int actStatus;
  bool verifiedStudent;
  bool phoneVerfied;
  bool actSetup;
  int joinDate;
  String profilePhoto;
  bool premiumUser;
  bool isAdmin;

  UserResult(
      {this.actStatus,
      this.isAdmin,
      this.joinDate,
      this.phoneVerfied,
      this.actSetup,
      this.premiumUser,
      this.profilePhoto,
      this.verifiedStudent});

  factory UserResult.fromJson(Map<String, dynamic> json) {
    return UserResult(
        actStatus: json['account_status'],
        verifiedStudent: json['verified_student'],
        phoneVerfied: json['phone_number_verified'] ?? "",
        joinDate: json['join_date'] ?? "",
        profilePhoto: json['profile_photo'] ?? "",
        premiumUser: json['premium_user'] ?? "",
        isAdmin: json['is_admin'] ?? "",
        actSetup: json['is_account_setup']);
  }
}
