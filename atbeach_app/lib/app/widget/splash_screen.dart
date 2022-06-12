import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF081332),
        body: Center(
          child: SizedBox(
            width: Get.width * 0.5,
            height: Get.height * 0.5,
            child: Image.asset("assets/logo/atBeach.png"),
          ),
        ),
      ),
    );
  }
}
