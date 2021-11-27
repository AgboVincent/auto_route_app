import 'package:auto_route_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => context.pushRoute( RiverPod()),
          child: const Text(
            "settings",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
