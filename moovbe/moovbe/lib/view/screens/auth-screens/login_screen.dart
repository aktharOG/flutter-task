import 'package:flutter/material.dart';
import 'package:moovbe/common/cm_textfield.dart';
import 'package:moovbe/common/colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
       TextEditingController usernamecontroller = TextEditingController();
       TextEditingController passwordcontroller = TextEditingController();

    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:   [
           Stack(
            children: [
               Container(
              color: const Color.fromRGBO(0x0000002b, 43, 43, 1),
              height: 266,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset("assets/Polygon 1.png")),
               SizedBox(child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 100,),
                Padding(
                  padding: EdgeInsets.only(left: 25,bottom: 8),
                  child: Text("Welcome",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 41,color: textColorWhite,),),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30,bottom: 8),
                  child: Text("Manage your Bus and Drivers",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: textColorWhite),),
                )
               ],),)
            ],
           ),
           const SizedBox(height: 30,),

            Form(child: Column(children:   [
            CMTextField(hintText: "Enter Username", labelText: "Username", controller: usernamecontroller),
            const SizedBox(height: 20,),
            CMTextField(hintText: "Enter Password", labelText: "Password", controller: passwordcontroller)

           ],)),

           const SizedBox(height: 20,),


         
          ],
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(30.0),
        child: BottomAppBar(
          color: Colors.transparent,
          child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(height: 58,width: 316),
              child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                    
                    backgroundColor: const Color.fromRGBO(252, 21, 59, 1)
                  ),
                  onPressed: (){
                   
                  }, child: const Text("Login",style: TextStyle(color:textColorWhite) ,)),
            ), ),
      ),
    );
  }
}