import 'package:flutter/material.dart';
import 'package:flutterdev/mylib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: const SwitchAndCheckBoxTestRoute()
    )
  );
}

class SwitchAndCheckBoxTestRoute extends StatefulWidget {

  const SwitchAndCheckBoxTestRoute({Key? key}) : super(key: key);

  @override
  _SwitchAndCheckBoxTestRouteState createState() => _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState extends State<SwitchAndCheckBoxTestRoute> {
  // 维护单选开关状态
  bool _switchSelected=true;

  // 维护复选框状态
  bool _checkboxSelected=true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Switch(
          // 当前状态
          value: _switchSelected,
          onChanged:(value){
            // 重新构建页面
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.red, // 选中时的颜色
          onChanged:(value){
            setState(() {
              _checkboxSelected = value ?? false;
            });
          } ,
        )
      ],
    );
  }
}