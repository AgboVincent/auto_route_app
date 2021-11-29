import 'dart:convert';
import 'package:auto_route_app/model/user_login_data.dart';
import 'package:http/http.dart' as http;

class LoginApi{

  Future<UserLoginData> loginUser(final loginData ) async {
    var url = Uri.parse("https://fmnapi.fmnplc.website/login");
    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: jsonEncode(loginData)
    );
    var responseData = jsonDecode(response.body);
    if (response.statusCode == 200) {
      if(responseData['status'] == true){

      print("correct");

      }
      
      print(responseData);
      return responseData;
    }
    else{
      throw Exception();
    }
  }
}