import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Container(
        child: getView(),
      )
    )
  );
}

final int performType = 5;

Widget getView(){
  switch(performType){
    case 1:
      // 演示SliverGridDelegateWithFixedCrossAxisCount
      return performGridView();
      break;
    case 2:
      // 演示SliverGridDelegateWithMaxCrossAxisExtent
      return performGridView1();
      break;
    case 3:
      // 演示GridView.count
      return performGridView2();
      break;
    case 4:
      // 演示GridView.extent
      return performGridView3();
      break;
    default:
      // 演示GridView.builder
      return performGridView4();
  };
}

Widget performGridView4(){

  final List<dynamic> _tiles = getChildren();

  return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 1.0
    ),
    itemCount: _tiles.length,
    itemBuilder: (context, index){
      return _tiles[index];
    },
    // physics: BouncingScrollPhysics(),
    // physics: AlwaysScrollableScrollPhysics(), // 总是可以滚动
    physics: NeverScrollableScrollPhysics(), // 禁止滚动
  );
}

Widget performGridView3(){
  return GridView.extent(
      maxCrossAxisExtent: 200,
      children: List.generate(10, (index) => Image.asset("images/tutorial/liuwei.webp")),
  );
}

Widget performGridView2(){
  return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 1.0,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      children: List.generate(10, (index) => Image.asset("images/tutorial/miaowazhongzi.webp"))
  );
}

// 列数由列表项的Extent决定
Widget performGridView1() {
  return GridView(
    padding: EdgeInsets.all(20),
    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: 100,
    ),
    children: getChildren(),
  );
}

// 指定固定列数
Widget performGridView(){
  return GridView(
    padding: EdgeInsets.all(20),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // 指定两列
      mainAxisSpacing: 20, // 列表项主轴间距
      crossAxisSpacing: 20, // 列表项副轴间距
      childAspectRatio: 1.2, // 子组件宽高比
    ),
    children: getChildren(),
  );
}

List<Widget> getChildren(){
  return  [
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.blueAccent,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.cyan,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.teal,
    ),
    Container(
      color: Colors.blueAccent,
    ),
  ];
}