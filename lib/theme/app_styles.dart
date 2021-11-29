import 'package:auto_route_app/resources/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static const header1 = TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 48,
      color: AppColor.white);

  static const header2 = TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 32,
      color: AppColor.white);

  static const headerText = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.w700, fontSize: 32);

  static const bodyText = TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      letterSpacing: 0.3);

  static const bodyText2 = TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 15,
      letterSpacing: 0.3);

  static const bodyText3 = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, fontSize: 15);

  static const hintText = TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 15,
      letterSpacing: 0.3,
      color: AppColor.placeholder_text);

  static const subtitle = TextStyle(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      letterSpacing: 0.5,
      color: AppColor.white);

  static const buttonText = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.w500, fontSize: 16);
}

double topPadding(BuildContext context) {
  return MediaQuery.of(context).padding.top;
}

double bottomPadding(BuildContext context) {
  return MediaQuery.of(context).padding.bottom;
}

double fullHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double fullWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
