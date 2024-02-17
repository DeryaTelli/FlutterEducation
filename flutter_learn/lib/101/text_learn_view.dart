import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({super.key, this.username});

  final String name = 'Dera';
  final String? username;
  //null gelebilecek olan degeri su sekilde tanimlarin adim 2 ye git

  final ProjectKeys keys =
      ProjectKeys(); //constructor urettim classimdan ve bunun icndeki degeri textimin icine ekledim enum da kullanabilirsin

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              username ??
                  '', // username! sekilde tanimlayamayiz eger deger hic gelmezse hata alicaktir kontrollu kullanmaiyiz
            ),
            Text(keys.welcome),
            Text(
              ('welcome  $name ${name.length}'), // 10 tane bu kelimeden yaziyor
              maxLines: 2, //satir sayisini soyluyoruz
              overflow: TextOverflow
                  .ellipsis, //yazdigimiz kelimelerin sonuna ... ekliyor
              textAlign: TextAlign.center,
              style:
                  ProjectStyle.style, //class olusturdum ve stylelarimi ekledim
            ),
            Text(
              ('welcome  $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: ProjectStyle.style,
            ),
            Text(
              ('welcome  $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: ProjectColors.color),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectStyle {
  static TextStyle style = TextStyle(
    color: Colors.amberAccent,
    fontStyle: FontStyle.italic,
    wordSpacing: 2, // kelime arasina bosluk ekler
    decoration: TextDecoration.underline, //yazilan cumlenin altini cizer
    letterSpacing: 2, //harfler arasina bosluk verir
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColors {
  static Color color = Colors.red;
}

class ProjectKeys {
  final String welcome = 'Welcome';
}
