import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home:const TestStatefulWidget()
    )
  );
}

/// 输入inh可以快速生成样板代码
class ShareDataWidget extends InheritedWidget {
  const ShareDataWidget({
    Key? key, // 组件唯一标志
    required Widget child, // 子组件
    required this.numForShare, // 自定义属性，表示用于分享的数字
  }) : super(key: key, child: child);

  final int numForShare;

  /// 获取数据
  static ShareDataWidget of(BuildContext context) {
    final ShareDataWidget? result = context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
    assert(result != null, 'No ShareDataWidget found in context');
    return result!;
  }

  /// 通知组件更新
  /// 根据old旧组件来指定条件，规定何时更新
  @override
  bool updateShouldNotify(ShareDataWidget old) {
    return true;
  }
}

/// 创建一个单独的组件
class MyCounter extends StatefulWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    // 使用InheritedWidget中的共享数据
    return Text("我的计数器："+ShareDataWidget.of(context).numForShare.toString());
  }
}



class TestStatefulWidget extends StatefulWidget {
  const TestStatefulWidget({Key? key}) : super(key: key);

  /// 必须实现的方法
  /// 返回包含状态信息的组件(State)
  @override
  State<TestStatefulWidget> createState() => _TestStatefulWidgetState();
}

class _TestStatefulWidgetState extends State<TestStatefulWidget> {

  int _num = 0;

  void _increment() {
    setState(() {
      _num++;
    });
  }

  void _decrement() {
    setState(() {
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // 以ShareDataWidget为根布局点
    return ShareDataWidget(
        child: Center(
          child: Column(
              children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: MyCounter()),
          ElevatedButton(
            onPressed: _increment,
            child: const Icon(Icons.add),
          ),
          ElevatedButton(
            onPressed: _decrement,
            child: const Text('-'),
          ),
          ],
        ),
    ),
        // 指定共享数字为_num
        numForShare: _num);
  }
}
