import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  IconLearn({super.key});
  IconsSize iconsSize = IconsSize();
  IconsColor iconsColor = IconsColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Example'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.heart_broken,
              color: iconsColor.flory,
              size: iconsSize.small,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.heart_broken,
              size: iconsSize.medium,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.heart_broken,
              size: iconsSize.large,
            ),
          ),
        ],
      ),
    );
  }
}

class IconsSize {
  final double small = 10;
  final double medium = 50;
  final double large = 90;
}

class IconsColor {
  final Color flory = Color(0xffED617A);
}
