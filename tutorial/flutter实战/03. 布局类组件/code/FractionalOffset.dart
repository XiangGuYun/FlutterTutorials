import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        width: 120,
        height: 120,
        color: Colors.blue[50],
        child: const Align(
          // 将FractionalOffset(0.2, 0.6)带入坐标转换公式得FlutterLogo实际偏移为（12，36）
          // 60 * 0.2 = 12
          // 60 * 0.6 = 36
          alignment: FractionalOffset(0.2, 0.6),
          child: FlutterLogo(
            size: 60,
          ),
        ),
      )
    )
  );
}