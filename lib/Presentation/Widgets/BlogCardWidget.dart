import 'package:flutter/material.dart';
import 'package:flutter_blog_app/Presentation/AppHelper/Dimension.dart';
import 'package:flutter_blog_app/Presentation/Widgets/ImageViewWidget.dart';
import 'package:get/get.dart';

class BlogCardWidget extends StatelessWidget {
  final imageUrl;

  final description;

  final title;

  VoidCallback onTab;

  BlogCardWidget({this.imageUrl, this.description, this.title, this.onTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 30.0, right: 30, bottom: 10, top: 20),
      child: InkWell(
        onTap: onTab,
        child: Container(
            //height: Dimension.post_card_height,
            width: Get.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 0.5, spreadRadius: 0.2)
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                imagesAndVideos(),
                titleAndDescription(context),
              ],
            )),
      ),
    );
  }

  Container imagesAndVideos() {
    return Container(
      margin: EdgeInsets.only(left: 14, right: 14, top: 14),
      height: 200,
      child: ImageViewWidget(imageUrl: imageUrl),
    );
  }

  titleAndDescription(context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Get.textTheme.headline6,
            textAlign: TextAlign.start,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              description,
              style: Get.textTheme.bodyText2,
              textAlign: TextAlign.start,
              maxLines: 3,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
