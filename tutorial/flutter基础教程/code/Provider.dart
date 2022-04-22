import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const ProviderApp());
}

class ProviderApp extends StatelessWidget{

  const ProviderApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Provider",
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }

}

/// 1. 创建数据模型继承ChangeNotifier
class LikeModel extends ChangeNotifier {
  int _count = 0;

  int get counter => _count;

  incrementCounter(){
    // 累加
    _count++;
    // 通知UI更新
    notifyListeners();
  }

}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 2. 创建Provider（注册数据模型）
    return ChangeNotifierProvider(
        create: (context) => LikeModel(),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Provider"),
          ),
          body: const MyHomePage(),
        ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// 3. 使用数据模型1
        Text("${context.watch<LikeModel>().counter}"),
        TextButton(
          /// 3. 使用数据模型2
          // 注意这里的incrementCounter后面不要加()
          onPressed: Provider.of<LikeModel>(context).incrementCounter,
          child:const Icon(Icons.thumb_up),
        ),
      ],
    );
  }
}