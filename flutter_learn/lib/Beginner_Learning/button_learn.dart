import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Example'),
        centerTitle: true,
      ),
      body: Column(children: [
        TextButton(
          child: const Text('Text Button'),
          onPressed: () {},
        ),
        ElevatedButton(child: const Text('Elevated Button'), onPressed: () {}),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.local_airport_sharp),
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            //servise istek at
            //sayfanin rengini duzenle
          },
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.pink[50],
            shape: const RoundedRectangleBorder(),
            padding: EdgeInsets.all(10),
          ),
          onPressed: () {},
          child: const Text('Outlined Button'),
        ),
        // buton olmayan widgetlari buton yapmak icin kullanilan widget InkWell
        InkWell(
          child: const Text('InkWell Button'),
          onTap: () {},
        ),
        // tum butonlara olan bir ozellik icon ve yaziyi ayni anda tutabilir
        OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.heart_broken),
          label: const Text('Heart'),
        ),
        ElevatedButton(
          child: const Text('Elevated Button Style'),
          onPressed: () {},
          style: ButtonStyle(
            //MaterialStateProperty.all(Colors.red), herzaman kirmizi olucaktir bunu dersem
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.purple[400];
              } else {
                return Colors.pink[200];
              }
            }),
          ),
        ),
        Container(
          height: 100,
          color: Colors.white,
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red[600],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          child: const Padding(
            //padding yaziyla buton arasindaki mesafeyi ayarlar
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 40, left: 40),
            child: Text(
              "Edited Buton ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

//Borders;
// CircleBorder() , RoundedRectangleBorder()
