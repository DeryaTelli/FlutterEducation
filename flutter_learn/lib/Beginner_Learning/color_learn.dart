import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  ColorLearn({super.key});
  ColorItem color = ColorItem();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Example'),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          color: color.porchase,
          child: Text('Hello'),
        ),
      ]
          // main.dart daki theme: yerine renkleri entegra edebiliriz
          //tum uygulamamizda o verdigimiz renkler gozukecektir
          //colorScheme :

          ),
    );
  }
}

class ColorItem {
  final Color porchase = Color(0xffEDBF61);
  final Color sulu = Color.fromRGBO(198, 273, 97, 1);
}
