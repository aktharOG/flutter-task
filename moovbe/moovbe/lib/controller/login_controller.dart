
import 'dart:developer';

import 'package:get/get.dart';
import 'package:moovbe/services/login_service.dart';

class LoginController extends GetxController{
 
   LoginService loginService = LoginService();
    Map<String,dynamic>? user;
          bool button = false;

  //         @override
  // void onInit() {
  //   super.onInit();
        

   
  // }

   
  
     login({required String username,required String password})async{
   user =await loginService.login(username: username, password: password);
   log(user.toString());
          return user;
     }

      get users{
      return user;
    }
      
}