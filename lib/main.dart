import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/HomeScreen.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
