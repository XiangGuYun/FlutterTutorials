import 'package:flutter/material.dart';

void main(){
  runApp(const AppStructureApp());
}

class AppStructureApp extends StatelessWidget{

  const AppStructureApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App结构",
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: const AppStructurePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class AppStructurePage extends StatefulWidget{

  const AppStructurePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AppStructureState();
  }

}

class AppStructureState extends State<AppStructurePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }

}