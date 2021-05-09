import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_blog_app/Core/Error/failures.dart';
import 'package:flutter_blog_app/Data/Repository/BlogRepository.dart';
import 'package:flutter_blog_app/Model/ModelModel.dart';
import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  static HomeScreenController to = Get.find();
  BlogRepository _blogRepository = new BlogRepository();

  Rx<BlogModel> blogModel = BlogModel().obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  getBlog() async {
    Either<Failure, dynamic> _response = await _blogRepository.getBlog();

    _response.fold((l) {
      printInfo(info: l.toString());
    }, (r) {
      printInfo(info: r.toString());

      blogModel.value = BlogModel.fromJson(jsonDecode(r));
    });
  }
}
