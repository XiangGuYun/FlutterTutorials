import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              // 将Transform.rotate换成RotatedBox
              child: RotatedBox(
                quarterTurns: 1, //旋转90度(1/4圈)
                child: Text("Hello world"),
              ),
            ),
            Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
          ],
        ),
      )
    )
  );
}