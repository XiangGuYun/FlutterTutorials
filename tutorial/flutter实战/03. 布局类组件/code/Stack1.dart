import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Stack(
          alignment:Alignment.center ,
          // 💡未定位widget占满Stack整个空间
          fit: StackFit.expand,
          children: <Widget>[
            // 被第二个遮住了
            const Positioned(
              left: 18.0,
              child: Text("I am Jack"),
            ),
            // 由于没有定位，所以fit属性会对它起作用，就会占满Stack
            Container(child: const Text("Hello world",style: TextStyle(color: Colors.white)),
              color: Colors.red,
            ),
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