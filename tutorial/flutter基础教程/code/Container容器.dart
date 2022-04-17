import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
    home: Container(
        child: Text(
          "Flutter是Google开源的构建用户界面（UI）工具包，帮助开发者通过一套代码库高效构建多平台精美应用，支持移动、Web、桌面和嵌入式平台。 Flutter 开源、免费，拥有宽松的开源协议，适合商业项目。Flutter已推出稳定的2.0版本。",
          style: TextStyle(
              fontSize: 20
          ),
        ),
        // 指定宽度，double.infinity相当于match_parent
        width: double.infinity,
        // 指定高度
        height: double.infinity,
        // 指定内边距
        padding: EdgeInsets.all(10),
        // 指定外边距
        margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
        // 指定内容对齐方式
        alignment: Alignment.center,
        // 指定变换
        transform:
            // 平移
            // Matrix4.translationValues(30, 0, 0),
            // 旋转
            // Matrix4.rotationZ(0.1), // 正数为顺时针，负数为逆时针
            // 斜切
            Matrix4.skew(0.2, 0.2),
        // 设置背景色，💡 如果指定了decoration，就只能在decoration中指定color
        // color: Colors.green,
        // 指定盒型装饰器
        decoration: BoxDecoration(
            color: Colors.green, // 指定背景色
            // 指定渐变背景色，💡 指定gradient后，color将失效
            gradient: LinearGradient(
              colors: [
                Colors.lightBlue, Colors.white
              ]
            ),
            border: Border( // 指定边框
              top: BorderSide( // 指定上边框
                  width: 10, // 指定边框宽度
                  color: Colors.red // 指定边框颜色
              ),
              left: BorderSide( // 指定左边框
                  width: 10,
                  color: Colors.red
              ),
              bottom: BorderSide( // 指定下边框
                  width: 10,
                  color: Colors.red
              ),
              right: BorderSide( // 指定右边框
                  width: 10,
                  color: Colors.red
              ),
            ),
            // 指定边框圆角
            borderRadius: BorderRadius.all(Radius.circular(10)),
        )
      )
    )
  );
}