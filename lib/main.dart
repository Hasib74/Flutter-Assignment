import 'package:flutter/material.dart';
import 'package:flutter_blog_app/Core/Network/network_info.dart';
import 'package:flutter_blog_app/Data/Local/DataSource/SpHelper.dart';
import 'package:flutter_blog_app/Presentation/AppHelper/AppTheme.dart';
import 'package:flutter_blog_app/Presentation/Routes/AppsRoutes.dart';
import 'package:flutter_blog_app/Presentation/Screen/SplashScreen/Controller/SplashScreenController.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Presentation/Screen/BlogDescription/Controller/BlogDescriptionController.dart';
import 'Presentation/Screen/HomeScreen/Controller/HomeScreenController.dart';

void main() {
  // SharedPreferences.getInstance();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SpHelper();

    Get.put(SplashScreenController());
    Get.lazyPut(() => NetworkInfoController());
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => BlogDescriptionController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.AppRoutesList(),
      defaultTransition: Transition.rightToLeft,
      transitionDuration: Duration(microseconds: 500),
      initialRoute: AppRoutes.INITIAL,
      theme: AppTheme(),
    );
  }
}
