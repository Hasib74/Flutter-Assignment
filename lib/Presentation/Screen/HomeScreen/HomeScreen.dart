import 'package:flutter/material.dart';
import 'package:flutter_blog_app/Model/ModelModel.dart';
import 'package:flutter_blog_app/Presentation/Routes/AppsRoutes.dart';
import 'package:flutter_blog_app/Presentation/Screen/HomeScreen/Controller/HomeScreenController.dart';
import 'package:flutter_blog_app/Presentation/Widgets/BlogCardWidget.dart';
import 'package:flutter_blog_app/Presentation/Widgets/ShimmerWidget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blogs",
          style: Get.textTheme.headline4.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white.withOpacity(0.6),
      ),
      body: Obx(() {
        printInfo(
            info:
                "HomeScreenController.to.blogModel.value ${HomeScreenController.to.blogModel.value}");
        return HomeScreenController.to.blogModel.value.blogs == null
            ? ShimmerWidget()
            : ListView.separated(
                itemBuilder: (_, int index) {
                  Blogs _blogs =
                      HomeScreenController.to.blogModel.value.blogs[index];

                  return BlogCardWidget(
                    imageUrl: _blogs.coverPhoto,
                    description: _blogs.description,
                    title: _blogs.title,
                    onTab: () {
                      printInfo(info: "TAB");
                      Get.toNamed(AppRoutes.BLOG_DESCRIPTION,
                          arguments: _blogs);
                    },
                  );
                },
                separatorBuilder: (_, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount:
                    HomeScreenController.to.blogModel.value.blogs.length);
      }),
    );
  }
}
