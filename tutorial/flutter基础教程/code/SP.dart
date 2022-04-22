import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ElevatedButton(onPressed: _incrementCounter, child: Text("递增")),
          ElevatedButton(onPressed: _decrementCounter, child: Text("递减")),
          ElevatedButton(onPressed: _removeCounter, child: Text("清空")),
        ],
      )
    )
  );
}

void _incrementCounter() async {
  // 获取保存实例
  SharedPreferences sp = await SharedPreferences.getInstance();
  var counter = (sp.getInt("counter") ?? 0) + 1;
  print("Pressed $counter times");
  await sp.setInt("counter", counter);
}

void _decrementCounter() async {
  // 获取保存实例
  SharedPreferences sp = await SharedPreferences.getInstance();
  var counter = (sp.getInt("counter") ?? 0);
  if(counter > 0) counter--;
  print("Pressed $counter times");
  await sp.setInt("counter", counter);
}

void _removeCounter() async {
  SharedPreferences sp = await SharedPreferences.getInstance();
  await sp.remove("counter");
  print(sp.getInt("counter") ?? 0);
}


