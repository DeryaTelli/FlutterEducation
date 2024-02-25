import 'package:flutter/material.dart';
import 'package:flutter_learn/Beginner_Learning/container_sized_box.learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // scaffold bir flutter sayfasinin iskeletidir
      appBar: AppBar(
        title: Text('Scaffold examples'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
      ),
      body: const Text('merhaba'),
      backgroundColor: Colors.black,
      extendBody: true,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarms_sharp),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                height: 200,
              ),
            );
          }),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      drawer: Drawer(),
      bottomNavigationBar: Container(
        decoration: ProjectDecoration(),
        height: 100,
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.abc_outlined), label: 'home'),
        ]),
      ),
    );
  }
}
