import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            // 背景渐变
            gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.orange.shade700,
                ],
            ),
            // 3像素圆角
            borderRadius: BorderRadius.circular(3.0),
            // 阴影
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(2, 2),
                blurRadius: 4
              )
            ]
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 80),
            child: Text('Login', style: TextStyle(color: Colors.white),),
          ),
        ),
      )
    )
  );
}