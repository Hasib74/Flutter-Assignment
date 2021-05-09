import 'package:flutter/material.dart';
import 'package:flutter_blog_app/Presentation/AppHelper/AppColors.dart';
import 'package:flutter_blog_app/Presentation/AppHelper/Dimension.dart';

AppTheme() {
  return ThemeData(
    primaryColor: AppColors.orange,
    accentColor: AppColors.orange,
    primaryColorDark: AppColors.black,
    primaryColorLight: AppColors.white,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(color: AppColors.white),
    dividerColor: AppColors.headline_color,
    dividerTheme: DividerThemeData(
      //thickness: 1,
      //indent: 16,
      // endIndent: 16,
        color: AppColors.text_fileld_color),
    textTheme: TextTheme(
      headline1: TextStyle(
          color: AppColors.text_color,
          fontSize: Dimension.h1,
          fontWeight: FontWeight.w800),
      headline2: TextStyle(
          color: AppColors.text_color,
          fontSize: Dimension.h2,
          fontWeight: FontWeight.bold),
/*      headline3: TextStyle(
          fontFamily: "Poppins",
          color: AppColors.color_text.withOpacity(0.8),
          //  fontSize: Dimension.text_size_extra1_large,
          fontWeight: FontWeight.w400),*/
      bodyText1: TextStyle(
          color: AppColors.text_color,
          fontSize: Dimension.body1,
          fontWeight: FontWeight.bold),
      bodyText2: TextStyle(
          color: AppColors.text_color,
          fontSize: Dimension.body1,
          fontWeight: FontWeight.normal),
      /*bodyText2: TextStyle(
         // fontFamily: "Poppins",
          fontFamily: AppConstant.font_acuminVariableConcept,
          color: AppColors.color_text,
          fontSize: Dimension.text_size_medium,
          fontWeight: FontWeight.bold),*/
    ),

/*    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.iOS: RouteTransition(),
      TargetPlatform.android: RouteTransition()
    }),
    fontFamily: AppConstant.font_acuminVariableConcept,*/
  );
}