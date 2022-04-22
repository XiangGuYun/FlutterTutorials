import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(home: const Table()));
}

class Table extends StatefulWidget {
  const Table({Key? key}) : super(key: key);

  @override
  State<Table> createState() => _TableState();
}

class User {
  String name;
  int age;
  bool selected;

  User(this.name, this.age, {this.selected = false});
}

class _TableState extends State<Table> {
  List<User> data = [
    User('张三', 18),
    User('刘备', 38),
    User('关羽', 28),
    User('张飞', 18),
  ];

  List<DataRow> getDataRows() {
    List<DataRow> dataRows = [];
    for (var element in data) {
      dataRows.add(DataRow(
        selected: element.selected,
          onSelectChanged: (selected){
          setState(() {
            element.selected = selected ?? false;
          });
          },
          cells: [
        DataCell(Text(element.name)),
        DataCell(Text(element.age.toString())),
        DataCell(Text("男")),
        DataCell(Text("无")),
      ]));
    }
    return dataRows;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DataTable(
        columns: const [
          DataColumn(label: Text("姓名")),
          DataColumn(label: Text("年龄")),
          DataColumn(label: Text("性别")),
          DataColumn(label: Text("简介")),
        ],
        rows: getDataRows(),
      ),
    );
  }
}
