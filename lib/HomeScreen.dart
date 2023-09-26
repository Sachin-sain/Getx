import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx1/controller.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
  }
final  UserController dataController=Get.put(UserController());
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX1'),
      ),
        body:GetBuilder<UserController>(
          init: dataController,
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: dataController.emailController,
                  decoration: InputDecoration(
                    hintText: 'enter email',
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: dataController.passwordController,
                  decoration: InputDecoration(
                    hintText: 'enter password',
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      dataController.loginApi();
                    },
                    child: Text("Login"),
                  ),
                )
              ],
            );
          },

        )



      );

  }
}
