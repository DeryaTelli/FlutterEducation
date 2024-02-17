import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //flutter sayfasi yapiyorsak scaffold ile sarmalamamiz gerekiyor
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Text('a' * 500),
          ),
          SizedBox.shrink(), // bos bir alan yaratiyor
          SizedBox.square(
            //kare bir alann olusturuyor
            dimension: 50,
            child: Text('b' * 50),
          ),
          Container(
            //width: 50,
            //height: 50,
            //color: Colors.red,
            constraints: BoxConstraints(
              // icine yerlesen elemanlara gore max min boyutlarini ayarliyor
              maxWidth: 300,
              minWidth: 100,
              minHeight: 10,
              maxHeight: 50,
            ),
            child: Text(
              'c' * 100,
              maxLines: 2,
            ),
            padding: const EdgeInsets.all(5),
            // container icindeki elemanin yukari, sag, sol ve altinin uzakligini ayarliyor
            margin: const EdgeInsets.all(10),
            // conatainerin disaridaki elamanlara olan yukari sag sol ve altinin uzakligini ayarliyor
            decoration: ProjectDecoration(),
            //ProjectUtility.boxDecoration
            //class olusturup kod fazlaligini onledik ve duzeltilmesi kolay kod yazdik
          ),
        ],
      ),
    );
  }
}

class ProjectDecoration extends BoxDecoration {
  //birinci yol
  ProjectDecoration()
      : super(
          // BoxDecoration(
          //eger decoration kullanirsam container icinde color kulanamam onu burada kullanmam gerekli
          //color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.blue, Colors.black]),
          //gecisli renk veriyor bu kodumuz
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              blurRadius: 10,
              offset:
                  Offset(0.1, 4), //nerden baslayacaginiz ayarliyoruz golgenin
            )
          ],
          //shape: BoxShape.circle,
          border: Border.all(
            // kutumun koselerini kalinlastirip renk degistirmemi sagliyor adindan anladigimiz gibi
            color: Colors.yellow,
            width: 2,
          ),
        );
}

class ProjectUtility {
  // 2ci yol
  static Decoration decoration = BoxDecoration(
    //eger decoration kullanirsam container icinde color kulanamam onu burada kullanmam gerekli
    //color: Colors.blue,
    borderRadius: BorderRadius.circular(10),
    gradient: LinearGradient(colors: [Colors.blue, Colors.black]),
    //gecisli renk veriyor bu kodumuz
    boxShadow: [
      BoxShadow(
        color: Colors.red,
        blurRadius: 10,
        offset: Offset(0.1, 4), //nerden baslayacaginiz ayarliyoruz golgenin
      )
    ],
    //shape: BoxShape.circle,
    border: Border.all(
      // kutumun koselerini kalinlastirip renk degistirmemi sagliyor adindan anladigimiz gibi
      color: Colors.yellow,
      width: 2,
    ),
  );
}
