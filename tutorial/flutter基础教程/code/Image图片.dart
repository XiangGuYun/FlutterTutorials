import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Column(
        children: [
          Image.asset(
            "images/tutorial/liuwei.webp",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.network(
            "https://img2.baidu.com/it/u=1851209006,2741232284&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=500",
            // 图片重复方式
            repeat: ImageRepeat.noRepeat,
            // 颜色混合模式
            colorBlendMode: BlendMode.color,
            color: Colors.green,
          )
        ],
      )
    )
  );
}