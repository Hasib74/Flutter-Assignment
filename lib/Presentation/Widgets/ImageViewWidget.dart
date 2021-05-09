import 'package:flutter/material.dart';

Widget ImageViewWidget(
    {imageUrl,
    double height = 200,
    double widget,
    BoxShape boxShape = BoxShape.rectangle,
    bool leftTopPadding = false,
    bool rightTopPadding = false,
    bool leftBottomPadding = false,
    bool rightBottomPadding = false}) {
  return Container(
    height: height,
    width: widget ?? double.infinity,
    decoration: BoxDecoration(
        shape: boxShape ?? BoxShape.rectangle,
        borderRadius: boxShape == BoxShape.circle
            ? null
            : BorderRadius.only(
                bottomLeft: leftBottomPadding
                    ? Radius.circular(25)
                    : Radius.circular(0),
                topLeft:
                    leftTopPadding ? Radius.circular(25) : Radius.circular(0),
                topRight:
                    rightTopPadding ? Radius.circular(25) : Radius.circular(0),
                bottomRight: rightBottomPadding
                    ? Radius.circular(25)
                    : Radius.circular(0)),
        image: DecorationImage(
            image: new NetworkImage(imageUrl), fit: BoxFit.cover)),
  );
}
