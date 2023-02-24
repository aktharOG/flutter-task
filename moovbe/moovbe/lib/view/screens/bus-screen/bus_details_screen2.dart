import 'package:flutter/material.dart';
import 'package:moovbe/view/widgets/bus-details/bus_seat_icon.dart';
import 'package:moovbe/view/widgets/bus-details/bus_seat_layout_1x3.dart';
import 'package:moovbe/view/widgets/bus-details/bus_seat_layout_2x2.dart';


import '../../widgets/bus-details/single_driver_container.dart';

class BusDetailslayout2 extends StatelessWidget {
  final String? busName,model,type;
  const BusDetailslayout2({super.key,required this.busName,required this.model,required this.type});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: 
        AppBar(
          centerTitle: true,
          title: Column(
            children: [
              SizedBox(height: 30,),
              Text("$busName $model"),
            ],
          )
        ),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
           const Padding(
             padding: EdgeInsets.all(20.0),
             child: SingleDriverPost(),
           ),

        
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: type=="1x3"? Busseats1x3():Busseats2x2(),
              )),
          ),
        ],
      ),),
    );
  }
}