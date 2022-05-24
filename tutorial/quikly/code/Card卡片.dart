import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        color: Colors.grey,
        height: 300,
        child: Card(
          margin: EdgeInsets.all(30),
          color: Colors.amber,
          shadowColor: Colors.purple,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius:  BorderRadius.circular(30),
            side: BorderSide(
              color: Colors.redAccent,
              width: 3
            )
          ),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.access_alarm, size: 50,),
                title: Text("张三", style: TextStyle(
                    fontSize: 20
                ),),
                subtitle: Text("董事长", style: TextStyle(
                    fontSize: 12
                ),),
              ),
              Divider(),
              ListTile(
                title: Text("☎️：13916434237", style: TextStyle(
                    fontSize: 20
                ),),
              ),
              Divider(),
              ListTile(
                title: Text("地址：浙江省杭州市西湖区", style: TextStyle(
                    fontSize: 20
                ),),
              ),
            ],
          ),
        ),
      )
    )
  );
}