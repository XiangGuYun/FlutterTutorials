import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        color: Colors.lightGreen,
        width: double.infinity,
        height: 500,
        child: Column(
          children: [
            Icon(Icons.home, size: 50,),
            Icon(Icons.home, size: 50,),
            Icon(Icons.home, size: 50,),
            Icon(Icons.home, size: 50,),
            Container(
              color: Colors.lightBlue,
              child: Row(
                children: [
                  Icon(Icons.home, size: 50,),
                  Icon(Icons.home, size: 50,),
                  Icon(Icons.home, size: 50,),
                  Icon(Icons.home, size: 50,),
                ],
                // 主轴对齐方式
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // 副轴对齐方式
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            )
          ],
          // 主轴对齐方式
          // spaceEvenly：各个元素的高度等分
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // 副轴对齐方式
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      )
    )
  );
}