import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';
import 'dart:math' as math;

void main() {
  runApp(StudyApp(
      home: Center(
        child: DecoratedBox(
          decoration:const BoxDecoration(color: Colors.red),
          child: Transform.rotate(
            //旋转90度
            angle: math.pi/2 ,
            child: const Text("Hello world"),
          ),
        ),
      )
    )
  );
}