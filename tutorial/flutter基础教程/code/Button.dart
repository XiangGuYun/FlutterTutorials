import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          children: [
            performTextButton(),
            performElevatedButton(),
            performOutlinedButtonAndButtonStyle(),
            performOutlinedButtonTheme(),
            performIconButton(),
            performIconButton1(),
            performButtonBar(),
            performBackButton(),
            performCloseButton(),
            performFloatingActionButton(),
          ],
        ),
      )
    )
  );
}

// FloatingActionBar要结合Scaffold使用
Widget performFloatingActionButton(){
  return FloatingActionButton(
    onPressed: (){},
    tooltip: "提示",
    child: Icon(Icons.add),
    backgroundColor: Colors.green,
    elevation: 0, // 去除阴影
  );
}

Widget performCloseButton(){
  return CloseButton(
    color: Colors.deepOrange,
    onPressed: (){},
  );
}

Widget performBackButton(){
  return BackButton(
    color: Colors.blueAccent,
    onPressed: (){},
  );
}

Widget performButtonBar(){
  return Container(
    color: Colors.pink[100],
    width: double.infinity,
    child: ButtonBar(
      // 按钮栏默认是水平方向，当超出宽度后，将变为垂直方向
      children: [
        ElevatedButton(
          onPressed: (){},
          child: Text("按钮1"),
        ),
        ElevatedButton(
          onPressed: (){},
          child: Text("按钮2"),
        ),
        ElevatedButton(
          onPressed: (){},
          child: Text("按钮3"),
        ),
      ],
    ),
  );
}

Widget performIconButton1(){
  // 凸起按钮和轮廓按钮也有icon方法
  return TextButton.icon(onPressed: null, icon: Icon(Icons.home), label: Text("text"));
}


Widget performIconButton(){
  return IconButton(
    icon: Icon(Icons.print),
    onPressed: (){},
    //💡 如果onPressed设置为null，就表示按钮处于禁用状态，以下属性将失效
    color: Colors.red,
    splashColor: Colors.blueAccent,
    // highlightColor会替换掉splashColor
    highlightColor: Colors.purple,
    tooltip: "what?",
  );
}

Widget performOutlinedButtonTheme(){
  return OutlinedButtonTheme(
    data: OutlinedButtonThemeData(
      // 💡 如果OutlinedButton声明了style，那么这里的style将会失效
      style: ButtonStyle(
          // 水波纹颜色
          overlayColor: MaterialStateProperty.all(
              Colors.purple
          ),
      )
    ),
    child: OutlinedButton(
      onPressed: (){
        print("clicked OutlinedButton");
      },
      onLongPress: (){
        print("long pressed OutlinedButton");
      },
      child: Text("轮廓按钮"),
    ),
  );
}

Widget performOutlinedButtonAndButtonStyle(){
  return OutlinedButton(
    // 按钮点击实现
    onPressed: (){
      print("click OutlinedButton");
    },
    // 按钮长按时间
    onLongPress: (){
      print("long press OutlinedButton");
    },
    // 设置按钮样式
    style: ButtonStyle(
      // 按钮文字样式
        textStyle: MaterialStateProperty.all(
            TextStyle(
              fontSize: 20,
            )
        ),
        // 前景色，即文本颜色
        foregroundColor: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.pressed)){
            // 按下按钮时的前景色
            return Colors.redAccent;
          } else {
            return Colors.amber;
          }
        }),
        // 背景色
        backgroundColor: MaterialStateProperty.resolveWith((states){
          if(states.contains(MaterialState.pressed)){
            // 按下按钮时的背景色
            return Colors.red;
          } else {
            return Colors.greenAccent;
          }
        }),
        // 阴影色
        shadowColor: MaterialStateProperty.all(Colors.purple),
        // 阴影大小
        elevation: MaterialStateProperty.all(20),
        // 边框
        side: MaterialStateProperty.all(BorderSide(
            color: Colors.blue,
            width: 2
        )),
        // 按钮形状
        shape: MaterialStateProperty.all(
            StadiumBorder( // 体育场俯视形状，CircleBorder-圆形
                side: BorderSide(
                    color: Colors.blue,
                    width: 2
                )
            )
        ),
        // 按钮大小
        minimumSize: MaterialStateProperty.all(
            Size(150, 60)
        ),
        // 水波纹颜色
        overlayColor: MaterialStateProperty.all(
            Colors.purple
        )
    ),
    child: Text("OutlinedButton"),
  );
}

Widget performTextButton(){
  return TextButton(
    // 按钮点击实现
    onPressed: (){
      print("click TextButton");
    },
    // 按钮长按时间
    onLongPress: (){
      print("long press TextButton");
    },
    child: Text("TextButton", style: TextStyle(
        fontSize: 30
    ),),
  );
}

Widget performElevatedButton(){
  return ElevatedButton(
    // 按钮点击实现
    onPressed: (){
      print("click ElevatedButton");
    },
    // 按钮长按时间
    onLongPress: (){
      print("long press ElevatedButton");
    },
    child: Text("ElevatedButton", style: TextStyle(
        fontSize: 30
    ),),
  );
}