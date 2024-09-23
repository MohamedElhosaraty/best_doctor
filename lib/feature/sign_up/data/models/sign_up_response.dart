import 'package:freezed_annotation/freezed_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  String? message;
  @JsonKey(name: 'userData')
  UserData? userData;
  bool? status;
  int? code;

  SignUpResponse({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;
  @JsonKey(name: 'userName')
  String? username;

  UserData({
    this.token,
    this.username,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
