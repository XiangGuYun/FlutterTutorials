import 'package:flutter/material.dart';

class StudyApp extends StatelessWidget{

  final Widget home;

  StudyApp({Key? key, required this.home}) : super(key: key){}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "学习",
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(this.runtimeType.toString()),
        ),
        body: getHome()
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  Widget getHome(){
    return home;
  }
}