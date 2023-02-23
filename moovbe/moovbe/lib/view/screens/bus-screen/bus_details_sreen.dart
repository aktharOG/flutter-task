import 'package:flutter/material.dart';

class BusDetailsPage extends StatelessWidget {
  final String busName,model;
  const BusDetailsPage({super.key,required this.busName,required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
        preferredSize:const Size.fromHeight(90),
        child: 
        AppBar(
          centerTitle: true,
          title: Text("$busName $model")
        ),
      ),
    );
  }
}