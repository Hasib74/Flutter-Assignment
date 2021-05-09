import 'package:flutter_blog_app/Presentation/Screen/BlogDescription/BlogDescriptionScreen.dart';
import 'package:flutter_blog_app/Presentation/Screen/HomeScreen/HomeScreen.dart';
import 'package:flutter_blog_app/Presentation/Screen/SplashScreen/SplashScreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static String INITIAL = "splash_screen";
  static String HOME = "home";
  static String BLOG_DESCRIPTION = "blog_description";

  static List<GetPage> AppRoutesList() {
    return [
      GetPage(name: INITIAL, page: () => SplashScreen()),
      GetPage(name: HOME, page: () => HomeScreen()),
      GetPage(name: BLOG_DESCRIPTION, page: () => BlogDescriptionScreen())
    ];
  }
}
