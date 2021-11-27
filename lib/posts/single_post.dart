import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class SinglePostPage extends StatelessWidget {
  final int postId;
  const SinglePostPage({
    Key? key,
    @PathParam() required this.postId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: Colors.red,
        child:const  Center(
          child: Text(
            "Welcome",
            style: TextStyle(
              color: Colors.white
            ),
          ),
        ),
    );
  }
}