// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:moovbe/controller/login_controller.dart';
import 'package:moovbe/model/driver_model.dart';

import 'exception-handle/dio_exceptions.dart';

class BusService {
  final Dio dio = Dio(
    BaseOptions(
      // 192.168.137.79
      baseUrl: 'http://flutter.noviindus.co.in/api',
      connectTimeout: const Duration(seconds: 5000),
      receiveTimeout: const Duration(seconds: 5000),
    ),
  );
                                // FETCH LIST OF BUS
                                 Future fetchBusList() async {
   final controller =  g.Get.put(LoginController());
   final urlid = controller.user!["url_id"];
   final token = controller.user!["access"];

   try{
    Response response =await dio.get("/BusListApi/$urlid/",
        options: Options(
            headers: {"Content-type": "application/json; charset=UTF-8", 'Authorization': 'Bearer $token',}));

            if(response.statusCode==200){
              log("success");
              var res = jsonEncode(response.data);
              Map<String,dynamic> data = jsonDecode(res);
              return data;
            }
   }on DioError catch(err){
     final errorMessage = DioException.fromDioError(err).toString();
              log("Dio Error : $errorMessage");
   }catch(e){
    log("fetch Bus list  error: $e");
   }
  }

   
     /// DISPLAY LIST OF DRIVERS
  Future fetchDrivers() async {
   final controller =  g.Get.put(LoginController());
   final urlid = controller.user!["url_id"];
   final token = controller.user!["access"];

   try{
    Response response =await dio.get("/DriverApi/$urlid/",
        options: Options(
            headers: {"Content-type": "application/json; charset=UTF-8", 'Authorization': 'Bearer $token',}));

            if(response.statusCode==200){
              log("success");
              var res = jsonEncode(response.data);
              Map<String,dynamic> data = jsonDecode(res);
              return data;
            }
   }on DioError catch(err){
     final errorMessage = DioException.fromDioError(err).toString();
              log("Dio Error : $errorMessage");
   }catch(e){
    log("fetch Driver list  error: $e");
   }
  }

     // ADD DRIVER
   Future addDriver({required String name,required String mobile,required String license_no})async{
    final controller =  g.Get.put(LoginController());
   final urlid = controller.user!["url_id"];
   final token = controller.user!["access"];

   try{
    Response response =await dio.post("/DriverApi/$urlid/",
        options: Options(
            headers: {"Content-type": "application/json; charset=UTF-8", 'Authorization': 'Bearer $token',}),data: {
                 "name": name,
            "mobile": mobile,
            "license_no": license_no
            });
           
            if(response.statusCode==200){
              log("success");
              var res = jsonEncode(response.data);
              Map<String,dynamic> data = jsonDecode(res);
              return data;
            }
   }on DioError catch(err){
     final errorMessage = DioException.fromDioError(err).toString();
              log("Dio Error : $errorMessage");
   }catch(e){
    log("add Driver to list  error: $e");
   }
   }
            // DELETE DRIVER
    Future deleteDriver({required String driverId})async{
       final controller =  g.Get.put(LoginController());
   final urlid = controller.user!["url_id"];
   final token = controller.user!["access"];

   try{
    Response response =await dio.delete("/DriverApi/$urlid/",
        options: Options(
            headers: {"Content-type": "application/json; charset=UTF-8", 'Authorization': 'Bearer $token',}),data: {
                "driver_id":driverId
            });
           
            if(response.statusCode==200){
              var res = jsonEncode(response.data);
              Map<String,dynamic> data = jsonDecode(res);
              return data;
            }
   }on DioError catch(err){
     final errorMessage = DioException.fromDioError(err).toString();
              log("Dio Error : $errorMessage");
   }catch(e){
    log("delete Driver from list  error: $e");
   }
    }
}
