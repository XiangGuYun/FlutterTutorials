import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'lib/StudyWidget.dart';

void main() {
  runApp(StudyApp(
      home: Center(
        child: ElevatedButton(
          child: const Text("点击发送请求"),
          onPressed: (){
            getIpAddress();
          },
        ),
      )
    )
  );
}

void getIpAddress() async {
  try{
    const String url = "https://www.baidu.com";
    Response response = await Dio().get(url);
    String data = response.data.toString();
    print(data);
  } catch(e){
    print(e);
  }
}