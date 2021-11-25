import 'package:auto_route_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => context.router.push(UserProfileRoute(userId: 2)) ,
          child: const Text(
            "navigating"
          ),
        ),
      ),
    );
  }
}