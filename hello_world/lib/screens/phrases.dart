import 'package:flutter/material.dart';

import 'package:hello_world/components/items.dart';

import '../models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Item> Phrase = const [
    Item(
      sound: 'are_you_coming.wav',
      jpName: "Ko nai no?",
      enName: 'Are you coming?',
    ),
    Item(
      sound: 'how.wav',
      jpName: "Go kibun wa ikagadesu ka?",
      enName: 'How are you feeling?',
    ),
    Item(
      sound: 'i_love_anime.wav',
      jpName: "Watashi wa anime ga daisukidesu",
      enName: 'I love anime',
    ),
    Item(
      sound: 'i_love_programming.wav',
      jpName: "Puroguramingu ga daisuki",
      enName: 'I love programming',
    ),
    Item(
      sound: 'what_is_your_name.wav',
      jpName: "Namae wa nandesu ka?",
      enName: 'What is your name?',
    ),
    Item(
      sound: 'where_are_you_going.wav',
      jpName: "Doko ni iku no",
      enName: 'Where are you going?',
    ),
    Item(
      sound: 'yes_im_coming.wav',
      jpName: "Hai, kimasu",
      enName: 'Yes Im coming',
    ),
    Item(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: "Kōdoku suru koto o ",
      enName: 'Dont forget to subscribe',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 49, 30, 24),
        title: const Text(
          'Phrase',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: Phrase.length,
        itemBuilder: (context, i) {
          return IistItem(
            number: Phrase[i],
            color: Color.fromARGB(255, 34, 142, 131)!,
            itemType: 'phrases',
          );
        },
      ),
    );
  }
}
