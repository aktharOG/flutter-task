import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/controller/bus_controller.dart';
import 'package:moovbe/view/widgets/bottom_app_bar_container.dart';
import 'package:moovbe/view/widgets/cm_textfield.dart';

class AddDriver extends StatelessWidget {
  const AddDriver({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BusController()); 
       final TextEditingController namecontroller = TextEditingController();
      final TextEditingController licenseNumbercontroller = TextEditingController();
   
    return  Scaffold(
        appBar:   PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: 
        AppBar(
          centerTitle: true,
          title: const Text("Add Driver")
        ),
      ),
      body: SingleChildScrollView(child: Column(
       
        children: [
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(child: Column(
            children: [
              CMTextField(hintText: "", labelText: "Enter Name", controller: namecontroller),
              const SizedBox(height: 20,),
              CMTextField(hintText: "", labelText: "Enter License Number", controller: licenseNumbercontroller)
            ],
          )),
        )
      ],),),
      bottomNavigationBar: BottomAppBarContainer(name: "Save",onTap: ()async{
       await controller.addDrivers(name: namecontroller.text, mobile: "9746263704", license_no: licenseNumbercontroller.text);
       log(controller.addDriverRes.toString());
         Get.back();
        },),
    );
  }
}