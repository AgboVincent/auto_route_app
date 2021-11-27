import 'package:auto_route_app/model/profile_details.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_login_data.g.dart';

@JsonSerializable(explicitToJson:  true)
class UserLoginData {
  final String username;
  final String password;
  final ProfileDetails profileDetails;

  UserLoginData({
    required this.username,
    required this.password,
    required this.profileDetails,
  });
  
  factory UserLoginData.fromJson(Map<String, dynamic> json) => _$UserLoginDataFromJson(json);


  Map<String, dynamic> toJson() => _$UserLoginDataToJson(this);


  @override
  String toString()=>
  'Details{username: $username, password: $password, profileDetails: $profileDetails}';
}