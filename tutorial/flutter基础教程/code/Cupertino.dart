import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        child: Column(
          children: [
            AlertDialog(
              title: Text("提示"),
              content: Text("确认删除吗？"),
              actions: [
                TextButton(
                  child: Text("取消"),
                  onPressed: (){},
                ),
                TextButton(
                  child: Text("确认"),
                  onPressed: (){},
                ),
              ],
            ),
            CupertinoAlertDialog(
              title: Text("提示"),
              content: Text("确认删除吗？"),
              actions: [
                CupertinoDialogAction(
                  child: Text("取消"),
                  onPressed: (){},
                ),
                CupertinoDialogAction(
                  child: Text("确认"),
                  onPressed: (){},
                )
              ],
            )
          ],
        ),
      ),
    )
  );
}