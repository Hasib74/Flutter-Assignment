import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog_app/Model/ModelModel.dart';
import 'package:flutter_blog_app/Presentation/AppHelper/AppColors.dart';
import 'package:flutter_blog_app/Presentation/AppHelper/AppSpaces.dart';
import 'package:flutter_blog_app/Presentation/AppHelper/Dimension.dart';
import 'package:flutter_blog_app/Presentation/Widgets/ImageViewWidget.dart';
import 'package:get/get.dart';

class BlogDescriptionScreen extends StatelessWidget {
  Blogs _blogs;

  @override
  Widget build(BuildContext context) {
    _blogs = Get.arguments;

    printInfo(info: "Title : ${_blogs.title}");
    printInfo(info: "Description : ${_blogs.description}");
    printInfo(info: "Cover Photo : ${_blogs.coverPhoto}");
    printInfo(info: "Author Name : ${_blogs.author.name}");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ImageViewWidget(
                imageUrl: _blogs.coverPhoto, height: Get.height * 0.4),
            AppSpaces.spaces_height_10,
            _category(),
            _author(),
            _dotted_break(),
            _title(),
            _description(),
          ],
        ),
      ),
    );
  }

  _title() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        _blogs.title,
        style: Get.textTheme.headline6,
      ),
    );
  }

  _author() {
    return ListTile(
      leading: ImageViewWidget(
        imageUrl: _blogs.author.avatar,
        height: 40,
        widget: 40,
        boxShape: BoxShape.circle,
      ),
      title: Text(_blogs.author.name),
      subtitle: Text(_blogs.author.profession),
    );
  }

  _category() {
    return Row(
      children: _blogs.categories
          .map((e) => Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 20,
                  child: Center(
                      child: Text(
                    "   ${e.toString()}   ",
                    style:
                        Get.textTheme.bodyText1.copyWith(color: Colors.white),
                  )),
                ),
              ))
          .toList(),
    );
  }

  _dotted_break() {
    return DottedLine(
      direction: Axis.horizontal,
      lineLength: double.infinity,
      lineThickness: 1.0,
      dashLength: 4.0,
      dashColor: Colors.black,
      dashRadius: 0.0,
      dashGapLength: 4.0,
      dashGapColor: Colors.transparent,
      dashGapRadius: 0.0,
    );
  }

  _description() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        _blogs.description,
        style: Get.textTheme.bodyText2.copyWith(
            fontSize: Dimension.body2, wordSpacing: 1, letterSpacing: 1),
      ),
    );
  }
}
