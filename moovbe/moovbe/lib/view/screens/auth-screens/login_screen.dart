import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/controller/login_controller.dart';
import 'package:moovbe/view/screens/home-screen/home_screen.dart';
import 'package:moovbe/view/widgets/bottom_app_bar_container.dart';
import 'package:moovbe/view/widgets/cm_textfield.dart';
import 'package:moovbe/constants/common/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    TextEditingController usernamecontroller = TextEditingController();
    TextEditingController passwordcontroller = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color.fromRGBO(0x0000002b, 43, 43, 1),
                    height: 266,
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset("assets/Polygon 1.png")),
                  SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25, bottom: 8),
                          child: Text(
                            "Welcome",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 41,
                              color: textColorWhite,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, bottom: 8),
                          child: Text(
                            "Manage your Bus and Drivers",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: textColorWhite),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Form(
                  child: Column(
                children: [
                  CMTextField(
                      hintText: "",
                      labelText: "Username",
                      controller: usernamecontroller),
                  const SizedBox(
                    height: 20,
                  ),
                  CMTextField(
                    hintText: "",
                    labelText: "Password",
                    controller: passwordcontroller,
                    obscureText: true,
                  )
                ],
              )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBarContainer(
            name: "Login",
            onTap: () async {
              await controller.login(
                  username: usernamecontroller.text,
                  password: passwordcontroller.text);
              if (controller.user!["status"] == false) {
                if (controller.user!["message"] == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Fill Required Fields")));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "Login Failed : ${controller.user!["message"]}")));
                }
              } else {
                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                        "Login Success : ${controller.user!["message"]}")));
                Get.to(()=>const HomePage());
              }
            })
        
        );
  }
}
