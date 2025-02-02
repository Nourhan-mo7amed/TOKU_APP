import 'package:flutter/material.dart';

import 'package:hello_world/components/items.dart';

import '../models/item.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya'),
    Item(
        sound: 'brown.wav',
        enName: 'daughter',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume'),
    Item(
        sound: 'dusty yellow.wav',
        enName: 'grand father',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojisan'),
    Item(
        sound: 'gray.wav',
        enName: 'mother',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'hahaoya'),
    Item(
        sound: 'green.wav',
        enName: 'grand mother',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo'),
    Item(
        sound: 'red.wav',
        enName: 'older brother',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nison'),
    Item(
        sound: 'white.wav',
        enName: 'older sister',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane'),
    Item(
        sound: 'yellow.wav',
        enName: 'son',
        image: 'assets/images/family_members/family_son.png',
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
            color: Color.fromARGB(255, 34, 142, 131)!,
            itemType: 'Phrases',
          );
        },
      ),
    );
  }
}
