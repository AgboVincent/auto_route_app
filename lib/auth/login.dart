import 'package:auto_route/auto_route.dart';
import 'package:auto_route_app/helper/empty_space.dart';
import 'package:auto_route_app/model/user_login_data.dart';
import 'package:auto_route_app/resources/app_color.dart';
import 'package:auto_route_app/routes/router.gr.dart';
import 'package:auto_route_app/services/login_api.dart';
import 'package:auto_route_app/widgets/c_button.dart';
import 'package:auto_route_app/widgets/c_textform_field.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login",
        style: TextStyle(
          color: AppColor.white
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const EmptySpace.v2(),
             CTextFormField(
               hintText: "username",
               controller: usernameController,
             ),
              const EmptySpace.v2(),
             CTextFormField(
               hintText: "password",
               controller: passwordController,
             ),
              const EmptySpace.v2(),
               CButton(
                color: AppColor.buttonColor,
                child: const Text("Login",
                style: TextStyle(
                  color: AppColor.white
                ),),
                textColor: AppColor.accent,
                title: "Login",
                onPressed:  () {
                  final login = UserLoginData(
                    username: usernameController.text,
                     password: passwordController.text,
                     );
                     final json = login.toJson();
                     final loginApi = LoginApi();
                     loginApi.loginUser(json);
                     print(json);
                }
                ),
           const EmptySpace(multiple: 3)
        ],
        ),
      ),
    );
  }
}