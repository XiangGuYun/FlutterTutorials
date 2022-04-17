import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // 演示Flutter的内容溢出
          performOverFlow(),
          // 演示Wrap，解决内容溢出
          performWrap("蜀", Colors.blue, ["刘备", "关羽", "张飞", "赵云", "马超", "孔明"]),
          performWrap("魏", Colors.red, ["曹操", "曹丕", "曹睿", "曹芳", "曹髦", "曹奂", "司马懿"]),
        ],
      )
    )
  );
}

Widget performOverFlow(){
  return Row(
    children: [
      Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text("蜀"),
        ),
        label: Text("刘备"),
      ),
      Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text("蜀"),
        ),
        label: Text("关羽"),
      ),
      Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text("蜀"),
        ),
        label: Text("张飞"),
      ),
      Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text("蜀"),
        ),
        label: Text("赵云"),
      ),
      Chip(
        avatar: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text("蜀"),
        ),
        label: Text("诸葛亮"),
      ),
    ],
  );
}


Widget performWrap(String country, Color avatarColor, List<String> names){

  return Wrap(
    spacing: 18,
    runSpacing: 5,
    alignment: WrapAlignment.spaceAround, // 主轴对齐方式
    children: names.map((e) =>
        Chip(
          avatar: CircleAvatar(
            backgroundColor: avatarColor,
            child: Text(country),
          ),
          label: Text(e),
        )
    ).toList(),
  );
}