import 'package:flutter/material.dart';


import '../../constants/common/colors.dart';

class BottomAppBarContainer extends StatelessWidget {
  final String name;
  final Color? color,textcolor;
  
  final VoidCallback onTap;
  
  const BottomAppBarContainer({super.key,required this.name,required this.onTap,this.color=redTextColor,this.textcolor = textColorWhite});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: BottomAppBar(
      
            elevation: 0,
            color: Colors.transparent,
            child:  ConstrainedBox(
                  constraints: const BoxConstraints.tightFor(height: 58,width: 316),
                  child: ElevatedButton(
                      
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                        
                        backgroundColor: color 
                      ),
                      onPressed:onTap
                      , child:  Text(name,style: TextStyle(color:textcolor,fontWeight: FontWeight.w500,fontSize: 20) ,)),
                ),
          
      ),
    );
  }
}