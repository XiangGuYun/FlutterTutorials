import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        color: Colors.lightBlueAccent,
        child: const ClipTestRoute(),
      )
    )
  );
}

class ClipTestRoute extends StatelessWidget {
  const ClipTestRoute({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  // 头像
  Widget avatar = Image.asset("images/tutorial/avatar.png", width: 60.0);
  return Center(
    child: Column(
      children: <Widget>[
        /// 第一个头像
        avatar, // 不剪裁
        /// 第二个头像
        ClipOval(child: avatar), //剪裁为圆形
        /// 第三个头像
        ClipRRect( //剪裁为圆角矩形
          borderRadius: BorderRadius.circular(5.0),
          child: avatar,
        ),
        /// 第四个头像
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              widthFactor: .5,// 宽度设为原来宽度一半，另一半会溢出
              child: avatar,
            ),
            const Text("你好世界", style: TextStyle(color: Colors.green),)
          ],
        ),
        /// 第五个头像
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRect(// 💡将溢出部分剪裁
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: .5,//宽度设为原来宽度一半
                child: avatar,
              ),
            ),
            const Text("你好世界",style: TextStyle(color: Colors.green))
          ],
        ),
      ],
    ),
  );
}
}