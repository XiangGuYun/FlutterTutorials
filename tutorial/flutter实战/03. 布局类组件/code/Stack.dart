import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      // 通过ConstrainedBox来确保Stack占满屏幕
      home: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Stack(
          alignment:Alignment.center , // 指定未定位或部分定位widget的对齐方式
          children: <Widget>[
            // 由于没有指定定位，并且alignment值为Alignment.center，所以它会居中显示
            Container(
              child: const Text("Hello world", style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
            // 只指定了水平方向的定位(left)，所以垂直居中+左边距18像素
            const Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            // 只指定了垂直方向的定位(top)，所以水平居中+上边距18像素
            const Positioned(
              top: 18.0,
              child: Text("Your friend"),
            )
          ],
        ),
      )
    )
  );
}