import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/constants/sample_data.dart';
import 'package:moovbe/view/screens/driver-screen/display_divers_list.dart';
import 'package:moovbe/view/widgets/home/bus_list_container.dart';
import 'package:moovbe/view/widgets/home/container_with_image.dart';
import 'package:moovbe/view/widgets/home/driver_conatiner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: 
        AppBar(
          leading: const Text(""),
          centerTitle: true,
          title: Column(
            children: [
              const SizedBox(height: 31,),
              Stack(
        
              children: [
                Image.asset("assets/moovbe.png",height: 26,width: 126,),
                Positioned(
                  left: 97,
                   top: -5,
                  child:  Image.asset("assets/Polygon 1 (1).png",height: 16,width: 14,),)
              ],
        ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(children: [
                  const  ContainerImage(image: "assets/image 2.png",name: "Bus",content: "Manage your Bus",),
                    InkWell(
                      onTap: (){
                        Get.to(DisplayDriversList());
                      },
                      child: const DriverContainer(name: "Driver", content: "Manage your Driver", image: "assets/driver.png"))
        ],),
         Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("${busList.length} Buses Found"),       
        ),
        const SizedBox(height: 20,),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: busList.length,
          itemBuilder: (ctx,index){
            final data = busList[index];
            return  BuslistContainer(busName:data["name"],model: data["model"],type: data["type"],);
          })
      ],),)
    );
  }
}