import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: SingleChildScrollView(
        child: Column(
          children: [
            // 演示纵向构造方法ListView
            performListView(),
            // 演示横向构造方法ListView
            performListView1(),
            // 演示ListView.builder
            performListView2(),
            // 演示ListView.separated
            performListView3(),
          ],
        ),
      ),
    )
  );
}

Widget performListView3(){

  final List<Widget> products = List.generate(20, (index) => ListTile(
    leading: Icon(Icons.coffee),
    title: Text("商品名称"),
    subtitle: Text("商品简介"),
    trailing: Icon(Icons.arrow_right),
  ));

  return Container(
    height: 150,
    child: ListView.separated(
      itemBuilder: (context, index){
        return products[index];
      },
      separatorBuilder: (context, index){
        return Divider(
          color: Colors.blue,
          thickness: 2,
        );
      },
      itemCount: products.length
    ),
  );
}

Widget performListView2(){

  final List<Widget> users = new List<Widget>.generate(20, (index) => OutlinedButton(
    child: Text("User$index"),
    onPressed: (){},
  ));

  return Container(
    height: 150,
    child: ListView.builder(
      // 列表项数量
      itemCount: users.length,
      // 列表项范围（高度或宽度）
      itemExtent: 30,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index){
        return users[index];
      },
    ),
  );
}

Widget performListView1() {
  return Container(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          width: 160,
          color: Colors.cyan,
        ),
        Container(
          width: 160,
          color: Colors.yellowAccent,
        ),
        Container(
          width: 160,
          color: Colors.deepOrangeAccent,
        ),
        Container(
          width: 160,
          color: Colors.green,
        ),
      ],
    ),
  );
}

Widget performListView(){
  return Container(
    height: 200,
    child: ListView(
      children: [
        ListTile(
          leading: Icon(Icons.access_alarm, size: 30,),
          title: Text("access_alarm"),
          subtitle: Text("subtitle"),
          trailing: Icon(Icons.arrow_right),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm, size: 30,),
          title: Text("access_alarm"),
          subtitle: Text("subtitle"),
          trailing: Icon(Icons.arrow_right),
          selected: true,
          selectedTileColor: Colors.red,
        ),
        ListTile(
          leading: Icon(Icons.access_alarm, size: 30,),
          title: Text("access_alarm"),
          subtitle: Text("subtitle"),
          trailing: Icon(Icons.arrow_right),
        ),
      ],
    ),
  );
}