import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  final String text;
  final Color color;
  final String imagepg;
  Function()? onTap;

  Category({
    Key? key,
    required this.text,
    required this.color,
    required this.imagepg,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white, // لون النص لضمان وضوحه
              ),
            ),
            SizedBox(height: 10), // إضافة مسافة بين النص والصورة
            Image.asset(imagepg, width: 120, height: 120, fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
