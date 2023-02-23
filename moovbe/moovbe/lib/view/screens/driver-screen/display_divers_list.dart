import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/controller/bus_controller.dart';
import 'package:moovbe/view/screens/driver-screen/add_driver_screen.dart';
import 'package:moovbe/view/widgets/bottom_app_bar_container.dart';
import 'package:moovbe/view/widgets/bus-details/drivers_list.dart';

import '../../../constants/common/colors.dart';

class DisplayDriversList extends StatelessWidget {
  const DisplayDriversList({super.key});
  @override
  Widget build(BuildContext context) {
       final controller = Get.put(BusController());

    return  GetBuilder(
      init: BusController(),
      builder: (context) {
        return Scaffold(
          appBar:   PreferredSize(
            preferredSize:const Size.fromHeight(90),
            child: 
            AppBar(
              centerTitle: true,
              title: Column(
                children: const [
                  SizedBox(height: 30,),
                  Text("Driver List"),
                ],
              )
            ),
          ),
          body:controller.data==null?const Center(child: CircularProgressIndicator(),): SingleChildScrollView(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
               Padding(
               padding:const  EdgeInsets.all(20.0),
               child: Text("${controller.data!["driver_list"].length} Drivers Found",style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 13,color: Color.fromRGBO(107, 107, 107, 1)),),
             ),
             const SizedBox(height: 20,),
              
             ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: controller.data!["driver_list"].length,
              itemBuilder: (ctx,index){
                final data =  controller.data!["driver_list"][index];
                return  DriversList(name:data["name"] ,license_no: data["license_no"],OnTap:(){
             String driverId = data["id"].toString();
               controller.deleteDriver(driverId: driverId);
                } ,);
              })
          ],),),
               bottomNavigationBar: BottomAppBarContainer(name: "Add Driver", onTap: (){
              Get.to(AddDriver());
               })
               
        );
      }
    );
  }
}