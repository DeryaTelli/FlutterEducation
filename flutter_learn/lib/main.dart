import 'package:flutter/material.dart';
import 'package:flutter_learn/101/text_learn_view.dart';

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
      debugShowCheckedModeBanner:
          false, // ekranda yazili olan debug yazisini kontrol eder
      theme: ThemeData.dark(),
      home: TextLearnView(),
    );
  }
}
