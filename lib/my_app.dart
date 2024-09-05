import 'package:box_q/route/app_pages.dart';
import 'package:box_q/route/app_routes.dart';
import 'package:box_q/view/screens/splash/binding/splash_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BoxQ",
      initialRoute: AppPages.splashScreen,
      initialBinding: SplashBinding(),
      getPages: AppRoutes.routes,
      defaultTransition: Transition.noTransition,
    );
  }
}
