import 'package:flutter/material.dart';

import '../components/items.dart';
import '../models/item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        enName: 'black',
        image: 'assets/images/colors/color_black.png',
        jpName: 'chichioya'),
    Item(
        sound: 'brown.wav',
        enName: 'brown',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'musume'),
    Item(
        sound: 'dusty yellow.wav',
        enName: 'dusty_yellow',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'ojisan'),
    Item(
        sound: 'gray.wav',
        enName: 'gray',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'hahaoya'),
    Item(
        sound: 'green.wav',
        enName: 'green',
        image: 'assets/images/colors/color_green.png',
        jpName: 'sobo'),
    Item(
        sound: 'red.wav',
        enName: 'red',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Nison'),
    Item(
        sound: 'white.wav',
        enName: 'white',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Ane'),
    Item(
        sound: 'yellow.wav',
        enName: 'yellow',
        image: 'assets/images/colors/color_yellow.png',
        jpName: 'Musuko'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 30, 24),
        title: const Text(
          'family members',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, i) {
          return IistItem(
            number: colors[i],
            color: Color.fromARGB(255, 116, 55, 131),
            itemType: 'colors',
          );
        },
      ),
    );
  }
}
