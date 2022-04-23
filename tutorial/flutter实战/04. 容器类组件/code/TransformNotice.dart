import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
                decoration:const BoxDecoration(color: Colors.red),
                child: Transform.scale(scale: 1.5,
                    child: const Text("Hello world")
                )
            ),
            const Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
          ],
        ),
      )
    )
  );
}