import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Center(
        child: DecoratedBox(
            decoration:const BoxDecoration(color: Colors.red),
            child: Transform.scale(
                scale: 1.5, //放大到1.5倍
                child: const Text("Hello world")
            )
        ),
      )
    )
  );
}