
// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:get/get.dart';
import 'package:moovbe/services/bus_service.dart';

class BusController extends GetxController{
   

        BusService busService = BusService();
                Map<String,dynamic>? data;
                Map<String,dynamic>? addDriverRes;
                Map<String,dynamic>? deleteRes;

      get datas{
        return data;
      }
      
                 @override
  void onInit() {
    super.onInit();
    fetchDriversList();
  }

        fetchDriversList()async{
        data =await  busService.fetchDrivers();
        update();
         log(data.toString());
        return data;
        }

        addDrivers({required String name,required String mobile,required String license_no})async{
       addDriverRes =   await busService.addDriver(name: name, mobile: mobile, license_no: license_no);
       fetchDriversList();
        }

        deleteDriver({required String driverId})async{
       deleteRes = await busService.deleteDriver(driverId: driverId);
       fetchDriversList();
        }


        
}