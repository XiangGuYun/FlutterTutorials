import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'lib/StudyWidget.dart';

void main() {

  final List<String> imgs = [
    "images/tutorial/liuwei.webp",
    "images/tutorial/miaowazhongzi.webp",
    "images/tutorial/daqianxian.png",
  ];

  runApp(StudyApp(
      home: ListView(
        children: [
          SizedBox(
            height: 200,
            child: Swiper(
              itemCount: imgs.length,
              itemBuilder: (context, index){
                return Image.asset(imgs[index], fit: BoxFit.cover,);
              },
              pagination: SwiperPagination(), // 轮播图的指示点
              control: SwiperControl(), // 左右箭头导航
            ),
          ),
          SizedBox(
            height: 200,
            child: Swiper(
              itemCount: imgs.length,
              itemBuilder: (context, index){
                return Image.asset(imgs[index], fit: BoxFit.cover,);
              },
              // 视口小数：中间页占据70%的宽度，左右两页各占15%
              viewportFraction: 0.7,
              // 左右两页大小变为原来的70%
              scale: 0.7,
            ),
          ),
          SizedBox(
            height: 200,
            child: Swiper(
              itemCount: imgs.length,
              itemBuilder: (context, index){
                return Image.asset(imgs[index], fit: BoxFit.cover,);
              },
              // 以下两个参数要搭配使用
              itemWidth: 300,
              layout: SwiperLayout.STACK,
            ),
          ),
          SizedBox(
            height: 200,
            child: Swiper(
              itemCount: imgs.length,
              itemBuilder: (context, index){
                return Image.asset(imgs[index], fit: BoxFit.cover,);
              },
              // 以下三个参数要搭配使用
              itemWidth: 300,
              itemHeight: 200,
              layout: SwiperLayout.TINDER,
            ),
          ),
        ],
      )
    )
  );
}