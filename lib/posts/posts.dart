import 'package:auto_route_app/model/profile_details.dart';
import 'package:auto_route_app/model/user_login_data.dart';
import 'package:auto_route_app/pages/box_dec.dart';
import 'package:auto_route_app/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final loginData = UserLoginData(
      username: "username",
       password: "password",
       profileDetails: ProfileDetails(
         name: "name", 
         age: 1, 
         color: "color"
         ));

       final json = loginData.toJson();
       print("$json");

       final newJson = UserLoginData.fromJson(json);
       print("$newJson");
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => context.router.push(SinglePostRoute(postId: 10)),
            child: Container(
              color: Colors.amber,
              height: 50,
              width: 100,
              child: const Center(
                child: Text("Navigat to"),
              ),
            ),
          ),
          const SizedBox(height: 40),
          GestureDetector(
            onTap: ()=>AutoRouter.of(context).push(const BoxRoute()),
            child: Container(
              color: Colors.black,
              height: 50,
              width: 100,
              child: const Center(
                child: Text(
                  "Navigat to box dec",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
