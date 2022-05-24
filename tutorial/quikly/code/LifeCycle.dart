import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home:const TestStatefulWidget()
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

  @override
  void initState() {
    super.initState();
    print('initState');
    _num = 1;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant TestStatefulWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  void _increment() {
    setState(() {
      print("setState");
      _num++;
    });
  }

  void _decrement() {
    setState(() {
      print("setState");
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
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
