import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:moovbe/constants/common/colors.dart';
import 'package:moovbe/view/screens/bus-screen/bus_details_screen2.dart';

class BuslistContainer extends StatelessWidget {
 final String? busName,model,type;
  const BuslistContainer({super.key,required this.busName,required this.model,required this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 74,
        width: 335,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: buslistBackground,
          borderRadius: BorderRadius.circular(15),
    
        ),
        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
          SizedBox(
            child: Row(
              
              children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/image 3.png",height: 38,width: 62,),
      ),
          SizedBox(width: 20,),
         SizedBox(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(busName!),
          Text(model!),
         ],),),
            ],),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: backgroundColor
              ),
              onPressed: (){
                if(type=="2x2"){
                  Get.to(BusDetailslayout2(busName: busName! ,model: model!,type: type,));
                }else{
                 Get.to(BusDetailslayout2(busName: busName! ,model: model!, type: type,));
                }
                
              }, child: Text("Manage")),
          )
          
    
        ],),
    
      ),
    );
  }
}