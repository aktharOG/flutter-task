import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/constants/common/colors.dart';
import 'package:moovbe/view/screens/auth-screens/login_screen.dart';
import 'package:moovbe/view/widgets/bottom_app_bar_container.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body:  Center(child: Stack(
        children: [
          Image.asset("assets/moovbe.png"),
          Positioned(
            left: 162,
             top: -5,
            child:  Image.asset("assets/Polygon 1 (1).png",height: 26,width: 24,),)
        ],
      ),),
     
      bottomNavigationBar: BottomAppBarContainer(name: "Get Started", onTap: (){Get.off(const LoginPage());},color: whiteColor,textcolor: redTextColor,)
    );
  }
}