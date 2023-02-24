
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../controller/login_controller.dart';
import 'exception-handle/dio_exceptions.dart';
import 'package:get/get.dart' as g;

class LoginService{
final Dio dio = Dio(
    BaseOptions(
     // 192.168.137.79
      baseUrl: 'http://flutter.noviindus.co.in/api',
      connectTimeout: const Duration(seconds: 5000),
      receiveTimeout: const Duration(seconds: 5000),
    ),
  );

   var res;
   Future <Map<String,dynamic>>login({required String username,required String password})async{
      try{
 Response response =await dio.post("/LoginApi",data: jsonEncode({
  "username":username,
  "password":password
 }),options: Options(
  headers: {
    "Content-type": "application/json"
  }
 ));
    if(response.statusCode==200){
        
         
      var res = jsonEncode(response.data);
      Map<String,dynamic> data = jsonDecode(res);
         
        if(data["status"]==false){
          return data;
        }else{
           return data;
        }
       
    
      
    }
      }on DioError catch(err){
              final errorMessage = DioException.fromDioError(err).toString();
              log("Dio Error : $errorMessage");
      }
      catch(e){
        log("Login Error:$e");
      }return res;
   }    
                          // refresh token
  
}