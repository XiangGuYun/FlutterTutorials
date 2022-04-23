import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Center(
        child: DecoratedBox(
          decoration: const BoxDecoration(color: Colors.red),
          child: Transform.translate(
              offset: const Offset(-20, -5),
            child: const Text("Hello World"),
          ),
        ),
      )
    )
  );
}