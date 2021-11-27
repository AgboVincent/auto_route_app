import 'package:flutter/material.dart';


class BoxPage extends StatelessWidget {
  const BoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
            Padding (
              padding: EdgeInsets.only(right: 30),
              child: Icon(Icons.settings, color: Colors.white, size: 20),
            )
        ],
        ),
    );
  }
}