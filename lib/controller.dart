import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController{
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  void loginApi()async{
    var response=await http.post(Uri.parse('https://reqres.in/api/login'),
      body: <String? ,String?>{
      "email":emailController.text,
       "password" :passwordController.text,
      }
    );
    if(response.statusCode==200){
      Get.snackbar("Login Sucessfully", '');
      var data=jsonDecode(response.body);
      print(data);

    }else {
      Get.snackbar("Failed", '');
    }

  }

}
