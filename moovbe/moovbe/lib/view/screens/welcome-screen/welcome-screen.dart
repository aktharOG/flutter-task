import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/common/colors.dart';
import 'package:moovbe/view/screens/auth-screens/login_screen.dart';

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
     
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: ConstrainedBox(
            constraints: const BoxConstraints.tightFor(width: 316,height: 58),
            child: ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
                
                backgroundColor: const Color.fromRGBO(255, 255, 255, 1)
              ),
              onPressed: (){
                Get.to(const LoginPage());
              }, child: const Text("Get Started",style: TextStyle(color: Colors.red) ,)),
          ),),
      ),
    );
  }
}