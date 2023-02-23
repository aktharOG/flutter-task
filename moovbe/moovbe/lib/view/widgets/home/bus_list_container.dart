import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:moovbe/constants/common/colors.dart';

class BuslistContainer extends StatelessWidget {
  const BuslistContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 74,
        width: 335,
        decoration: BoxDecoration(
          color: buslistBackground,
          borderRadius: BorderRadius.circular(15),
    
        ),
        child: Row(children: [
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
          Text("KSRTC"),
          Text("Swift Scanio P-series"),
         ],),),
            ],),
          ),
          SizedBox(width: 30,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor
            ),
            onPressed: (){}, child: Text("Manage"))
          
    
        ],),
    
      ),
    );
  }
}