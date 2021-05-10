import 'package:flutter_blog_app/Data/Local/DataSource/SpHelper.dart';
import 'package:flutter_blog_app/Presentation/Routes/AppsRoutes.dart';
import 'package:flutter_blog_app/Presentation/Screen/HomeScreen/Controller/HomeScreenController.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController to = Get.find();

  @override
  void onInit() {
    // TODO: implement onInit

    Future.delayed(Duration(seconds: 5)).then((value) {
      HomeScreenController.to.getBlog();

      Get.offAndToNamed(AppRoutes.HOME);
    });
  }
}
