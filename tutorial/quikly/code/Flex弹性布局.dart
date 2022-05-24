import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Column(
        children: [
          // 验证Expanded
          verifyExpanded(),
          // 演示横向平均等分
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // 水平排列，从右到左
            textDirection: TextDirection.rtl,
            children: [
              Icon(Icons.home, size: 50),
              Icon(Icons.home, size: 50),
              Icon(Icons.home, size: 50),
              Icon(Icons.settings, size: 50),
            ],
          ),
          // 演示横向2:1分
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // 水平排列，从右到左
            textDirection: TextDirection.ltr,
            children: [
              Expanded(
                flex: 2, // 设置宽度占比
                child: Container(
                  color: Colors.red,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 1, // 设置宽度占比
                child: Container(
                  color: Colors.yellow,
                  height: 50,
                ),
              )
            ]
          ),
          // 演示纵向2:1:1分
          Container(
            height: 100,
            margin: EdgeInsets.only(top: 20),
            child: Flex(
                direction: Axis.vertical,
                // 垂直排列，up为反向
                verticalDirection: VerticalDirection.up,
                children: [
                  Expanded(
                    flex: 2, // 设置高度占比
                    child: Container(
                      color: Colors.red,
                      width: double.infinity,
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Expanded(
                    flex: 1, // 设置高度占比
                    child: Container(
                      color: Colors.yellow,
                      width: double.infinity,
                    ),
                  )
                ]
            ),
          ),
        ],
      )
    )
  );
}

Widget verifyExpanded(){
  return Row(
    children: [
      // Container默认宽度取决于子元素
      Container(
        color: Colors.lightBlue,
        height: 50,
        child: Text("test"),
      ),
      // Expanded的宽度会填满剩余宽度，即使子元素宽度为0
      Expanded(
        child: Container(
          color: Colors.lightGreen,
          height: 50,
        ),
      )
    ],
  );
}