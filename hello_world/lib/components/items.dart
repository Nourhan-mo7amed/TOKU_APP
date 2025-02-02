import 'package:flutter/material.dart';
import 'package:hello_world/models/item.dart';

class IistItem extends StatelessWidget {
  const IistItem(
      {super.key,
      required this.number,
      required this.color,
      required this.itemType});
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(
            color: Color.fromARGB(255, 138, 134, 134), // لون الحواف
            width: 2, // سمك الحافة
          ),
        ),

        height: 95,
        // color: color,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
                //color: Color.fromARGB(255, 250, 236, 211),

                child: Image.asset(number.image!,
                    height: 90), // التأكد أن الصورة ستكون دائرية
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(number.jpName,
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  Text(number.enName,
                      style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            ),
            const Spacer(
              flex: 1, //بياخد المساحه الباقيه ويحط الايقون
            ),
            IconButton(
              onPressed: () async {
                try {
                  // AudioCache player =
                  //     AudioCache(prefix: 'assets/sounds/$itemType/');
                  // player.play(number.sound);
                } catch (ex) {
                  print('ex');
                }
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
