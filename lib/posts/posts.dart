import 'package:auto_route_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: GestureDetector(
        onTap: ()=>context.router.push(SinglePostRoute(postId: 1)),
        child: const Center(
          child: Text(
            "Navigat to"
          ),
        ),
      ),
    );
  }
}
