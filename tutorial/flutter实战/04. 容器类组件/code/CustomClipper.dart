import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {

  var avatar = Image.asset("images/tutorial/avatar.png", width: 60, height: 60,);

  runApp(StudyApp(
      home: Center(
        child: DecoratedBox(
          decoration: const BoxDecoration(
              color: Colors.red
          ),
          child: ClipRect(
              clipper: MyClipper(), //使用自定义的clipper
              child: avatar
          ),
        ),
      )
    )
  );
}

/// 自定义裁剪器
class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => const Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}