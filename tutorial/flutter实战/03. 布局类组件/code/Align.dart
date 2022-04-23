import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        /// 通过同时指定Align的widthFactor和heightFactor 为 2 也可以达到同样的效果
        height: 120.0,
        width: 120.0,
        color: Colors.blue.shade50,
        child: const Align(
          /// 定位在右上角
          /// static const Alignment topRight = Alignment(1.0, -1.0);
          /// 1 表示 最右， -1 表示最上
          alignment: Alignment.topRight,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      )
    )
  );
}