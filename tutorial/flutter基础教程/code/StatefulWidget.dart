import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: const TestStatefulWidget()
  )
  );
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
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text('数字$_num'),),
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
    );
  }
}
