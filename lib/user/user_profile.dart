import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  final int userId;
  const UserProfilePage({
    Key? key,
    @PathParam() required this.userId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}