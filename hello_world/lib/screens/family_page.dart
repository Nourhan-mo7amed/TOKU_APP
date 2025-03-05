import 'package:flutter/material.dart';

import '../components/items.dart';
import '../models/item.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Item> familymembers = const [
    Item(
        sound: 'father.wav',
        enName: 'father',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichioya'),
    Item(
        sound: 'daughter.wav',
        enName: 'daughter',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume'),
    Item(
        sound: 'grand father.wav',
        enName: 'grand father',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojisan'),
    Item(
        sound: 'mother.wav',
        enName: 'mother',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'hahaoya'),
    Item(
        sound: 'grand mother.wav',
        enName: 'grand mother',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo'),
    Item(
        sound: 'older bother.wav',
        enName: 'older brother',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nison'),
    Item(
        sound: 'older sister.wav',
        enName: 'older sister',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane'),
    Item(
        sound: 'son.wav',
        enName: 'son',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko'),
    Item(
        sound: 'younger brother.wav',
        enName: 'younger brother',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'kyu'),
    Item(
        sound: 'younger sister.wav',
        enName: 'younger sister',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'ju')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 49, 30, 24),
        title: const Text(
          'family members',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: ListView.builder(
        itemCount: familymembers.length,
        itemBuilder: (context, i) {
          return IistItem(
            number: familymembers[i],
            color: Color.fromARGB(255, 175, 154, 139),
            itemType: 'family_members',
          );
        },
      ),
    );
  }
}
