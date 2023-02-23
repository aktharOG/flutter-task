import 'package:flutter/material.dart';
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
          centerTitle: true,
          title: Column(
            children: [
              SizedBox(height: 31,),
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
        Row(children:const [
                    ContainerImage(image: "assets/image 2.png",name: "Bus",content: "Manage your Bus",),
                    DriverContainer(name: "Driver", content: "Manage your Driver", image: "assets/driver.png")
        ],),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("21 Buses Found"),       
        ),
        const SizedBox(height: 20,),
        ListView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: 5,
          itemBuilder: (ctx,index){
            return const BuslistContainer();
          })
      ],),)
    );
  }
}