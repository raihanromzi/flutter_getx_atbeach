import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

import 'app/widget/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "AtBeach App",
    //   initialRoute: Routes.ONBOARDING,
    //   getPages: AppPages.routes,
    // );
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 4)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: "AtBeach App",
              initialRoute: Routes.ONBOARDING,
              getPages: AppPages.routes,
            );
          }
        });
  }
}
