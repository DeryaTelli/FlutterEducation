import 'package:flutter/material.dart';
import 'package:flutter_learn/Beginner_Learning/app_bar_learn.dart';
import 'package:flutter_learn/Beginner_Learning/button_learn.dart';
import 'package:flutter_learn/Beginner_Learning/color_learn.dart';
import 'package:flutter_learn/Beginner_Learning/container_sized_box.learn.dart';
import 'package:flutter_learn/Beginner_Learning/icon_learn.dart';
import 'package:flutter_learn/Beginner_Learning/scaffold_learn.dart';
import 'package:flutter_learn/Beginner_Learning/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //flutter projelerinin temasinin adi
      // CupertinoApp() diyede baslangis var daha ios ozelliklerine yonelik yaklasimi var
      // material app projenin temasini ciziyor ana olaylari burada yapiliyor
      title: 'Flutter Demo', // uygulamadan cikinca uste gorunen baslik
      debugShowCheckedModeBanner: false,
      // ekranda yazili olan debug yazisini kontrol eder
      theme: ThemeData.dark().copyWith(
        
        //tum uygulamamin appbarlarinin ozelliklerini stillerini ayarlayip buraya yazarsam eger
        //tum sayfalarimdaki appbarda bunu uygulayacaktir
        //sen su yolu izle tum ozelliklerini stillerini ayri bir class olusturup appBarTheme: 'ye ekle
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      home:  ColorLearn(),
      //IconLearn()
      //AppBarLearnView()
      //ButtonLearn()
      //ScaffoldLearnView()
      //ContainerSizedBoxLearn()
      //TextLearnView()
    );
  }
}
