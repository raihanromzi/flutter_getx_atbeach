import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/widget/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AtBeach App",
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
    );
    // return FutureBuilder(
    //     future: Future.delayed(const Duration(seconds: 4)),
    //     builder: (context, snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return const SplashScreen();
    //       } else {
    //         return GetMaterialApp(
    //           debugShowCheckedModeBanner: false,
    //           title: "AtBeach App",
    //           initialRoute: Routes.ONBOARDING,
    //           getPages: AppPages.routes,
    //         );
    //       }
    //     });
  }
}
