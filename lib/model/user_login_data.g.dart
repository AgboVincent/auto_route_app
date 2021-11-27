// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_login_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLoginData _$UserLoginDataFromJson(Map<String, dynamic> json) =>
    UserLoginData(
      username: json['username'] as String,
      password: json['password'] as String,
      profileDetails: ProfileDetails.fromJson(
          json['profileDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserLoginDataToJson(UserLoginData instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'profileDetails': instance.profileDetails.toJson(),
    };
