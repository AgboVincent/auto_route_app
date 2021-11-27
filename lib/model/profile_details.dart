

import 'package:json_annotation/json_annotation.dart';

part 'profile_details.g.dart';

@JsonSerializable()
class ProfileDetails{

  final String name;
  final int age;
  final String color;
  

  ProfileDetails({
    required this.name,
    required this.age,
    required this.color
  });

  factory ProfileDetails.fromJson(Map<String, dynamic> json) => _$ProfileDetailsFromJson(json);


  Map<String, dynamic> toJson() => _$ProfileDetailsToJson(this);
  
}