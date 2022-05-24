import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        child: Stack(
          // 横向排列方式
          textDirection: TextDirection.rtl,
          // 对齐方式，会替换掉textDirection效果
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage("https://gimg3.baidu.com/bd_fav/src=https%3A%2F%2Ff12.baidu.com%2Fit%2Fu%3D3993228164%2C2900798998%26fm%3D173%26app%3D49%26f%3DJPEG%3Fw%3D312%26h%3D208%26s%3DE386DC080A43B415002869A10300C082&app=2025&size=f600_400&n=0&g=0n&q=100"),
              radius: 200, // 设置图片半径
            ),
            Text(
              "一段故事",
              style: TextStyle(
                color: Colors.greenAccent
              ),
            ),
            Positioned(
              child: Container(
                color: Colors.redAccent,
                padding: EdgeInsets.all(10),
                child: Text("头文字D",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellowAccent
                  ),
                ),
              ),
              top: 40,
              left: 120,
            )
          ],
        ),
      )
    )
  );
}