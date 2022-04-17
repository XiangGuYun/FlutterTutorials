import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Stack(
        children: [
          performHorizontalScroll(),
          performVerticalScroll()
        ],
      ),
    )
  );
}

Widget performVerticalScroll(){
  return SingleChildScrollView(
    // 必须指定滚动方向，否则可能会产生Overflow，且无滚动效果
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    reverse: false,
    child: Column(
      children: List.generate(20, (index) =>
          OutlinedButton(
            child: Text("按钮$index"),
            onPressed: (){},
          )
      ),
    ),
  );
}

Widget performHorizontalScroll(){
  return SingleChildScrollView(
    // 必须指定滚动方向，否则可能会产生Overflow，且无滚动效果
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
    reverse: true,
    physics: BouncingScrollPhysics(),
    child: Row(
      children: [1,2,3,4,5,6,7,8,9,10].map((e) => OutlinedButton(
        child: Text("Button$e"),
        onPressed: (){},
      )).toList(),
    ),
  );
}