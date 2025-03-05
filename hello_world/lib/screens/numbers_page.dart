import 'package:flutter/material.dart';
import 'package:hello_world/components/items.dart';
import 'package:hello_world/models/item.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<Item> numbers = const [
    Item(
        sound: 'number_one_sound.mp3',
        enName: 'one',
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi'),
    Item(
        sound: 'number_two_sound.mp3',
        enName: 'two',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'ni'),
    Item(
        sound: 'number_three_sound.mp3',
        enName: 'three',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'san'),
    Item(
        sound: 'number_four_sound.mp3',
        enName: 'four',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'shi'),
    Item(
        sound: 'number_five_sound.mp3',
        enName: 'five',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'go'),
    Item(
        sound: 'number_six_sound.mp3',
        enName: 'six',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'roku'),
    Item(
        sound: 'number_seven_sound.mp3',
        enName: 'seven',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'sebun'),
    Item(
        sound: 'number_eight_sound.mp3',
        enName: 'eight',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'hachi'),
    Item(
        sound: 'number_nine_sound.mp3',
        enName: 'nine',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'kyu'),
    Item(
        sound: 'number_ten_sound.mp3',
        enName: 'ten',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'ju')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 49, 30, 24),
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, i) {
          return IistItem(
            number: numbers[i],
            color: Color.fromARGB(255, 218, 146, 152),
            itemType: 'numbers',
          );
        },
      ),
    );
  }
}
