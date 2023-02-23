import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moovbe/view/screens/welcome-screen/welcome-screen.dart';

import 'constants/common/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:  Theme.of(context).copyWith(
  colorScheme: Theme.of(context).colorScheme.copyWith(
        primary:  primaryColor,
      ),
),
      home: const WelcomePage()
    );
  }
}
