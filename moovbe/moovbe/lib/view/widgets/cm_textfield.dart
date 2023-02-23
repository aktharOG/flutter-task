import 'package:flutter/material.dart';

class CMTextField extends StatelessWidget {
  final String hintText,labelText;
  final bool obscureText;
  final TextEditingController controller;
    const CMTextField({super.key, required this.hintText, required this.labelText, required this.controller,this.obscureText=false});
  

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 58,
            width: 321,
              decoration:     BoxDecoration(
                color: const Color.fromRGBO(0x0000002a, 42, 42, 0.1),
                borderRadius: BorderRadius.circular(10)
              ),
               child: TextFormField(
                showCursor: false,  
                obscureText: obscureText ,
                controller: controller,
                textAlign: TextAlign.center,
                      
                decoration:   InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  border: InputBorder.none,
                  label:  Center(
                    child: Text(labelText),
                    
                  ),
                  hintText: hintText,
                 // labelText: labelText
                )
               ),
             );
  }
}