import 'package:flutter/material.dart';

void main(){
  runApp(const TextApp());
}

class TextApp extends StatelessWidget{

  const TextApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Text文本组件",
      theme: ThemeData(
        primaryColor: Colors.black,
        // 配置全局自定义字体
        fontFamily:"Selima"
      ),
      home: Scaffold(
        body: Column(
          children: [
            studyText(),
            studyRichText()
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

}

/**
 * 文本组件
 */
Widget studyText(){
  return Text(
    "Hello Flutter Hello Flutter Hello Flutter Hello Flutter Hello Flutter Hello Flutter Hello Flutter Hello Flutter ",
    textDirection: TextDirection.ltr,
    style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.lineThrough,
        decorationColor: Colors.blue
    ),
    textAlign: TextAlign.right,
    maxLines: 3,
    overflow: TextOverflow.ellipsis,
    textScaleFactor: 1.5,
  );
}

/**
 * 富文本组件
 */
Widget studyRichText(){
  return RichText(
    text: TextSpan(
      text:"Hello",
      style: TextStyle(
        fontSize: 40,
        color: Colors.red,
        // 针对单个Text设置自定义字体
        fontFamily: "Selima"
      ),
      children: [
        TextSpan(
          text: " Flutter",
          style: TextStyle(
            fontSize: 40,
            color: Colors.blue
          ),
        ),
        TextSpan(
          text: " Study",
          style: TextStyle(
              fontSize: 30,
              color: Colors.green
          ),
        )
      ]
    ),
  );
}

Widget customFontText(){
  return Text(
    "自定义字体",
  );
}