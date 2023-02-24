import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BusSeatLayout extends StatelessWidget {
  final String image1,image2;
  const BusSeatLayout({super.key,required this.image1,required this.image2});

  @override
  Widget build(BuildContext context) {
    return  FittedBox(
      child: Container(
      //  color: Colors.yellow,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image1,height: 20,width: 30,),
            ),
            Positioned(
              left: 7,
              
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(image2,height: 13,width: 16,),
              ))
          ],
        ),
      ),
    );
  }
}