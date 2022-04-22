import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Column(

        children: [
          // 模糊进度条(会执行一个动画)
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
          ),
          //进度条显示50%
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: .5,
          )
        ],
      )
    )
  );
}