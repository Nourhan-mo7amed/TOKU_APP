import 'package:flutter/material.dart';
import 'package:hello_world/components/category_items.dart';
import 'package:hello_world/screens/color_page.dart';
import 'package:hello_world/screens/family_page.dart';
import 'package:hello_world/screens/numbers_page.dart';
import 'package:hello_world/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9DCD3),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 49, 30, 24),
        title: Center(
          child: Text(
            'Toku App',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
              padding: EdgeInsets.all(20),
              children: [
                Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return NumberPage();
                      }));
                    },
                    text: "Numbers",
                    color: Color.fromARGB(255, 204, 143, 148),
                    imagepg: "assets/images/numbers/numbers.png"),
                Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ColorPage();
                      }));
                    },
                    text: "Colors",
                    color: Color.fromARGB(255, 116, 55, 131),
                    imagepg: "assets/images/colors/colors.png"),
                Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return FamilyMembers();
                      }));
                    },
                    text: "Family",
                    color: Color.fromARGB(255, 175, 154, 139),
                    imagepg: "assets/images/family_members/family.png"),
                Category(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PhrasesPage();
                      }));
                    },
                    text: "Phrase",
                    color: Color.fromARGB(255, 34, 148, 137)!,
                    imagepg: "assets/images/numbers/phases.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
