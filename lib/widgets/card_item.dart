import 'package:flutter/material.dart';

import 'custom_text.dart';

class CardItem extends StatelessWidget {
  final String subtitle;
  final String title;
  final String value;
  final Color color1;
  final Color color2;
  final IconData icon;

  const CardItem(
      {Key key,
      this.title,
      this.value,
      this.color1,
      this.color2,
      this.icon,
      this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 500,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
                colors: [color1 ?? Colors.green, color2 ?? Colors.blue],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300], offset: Offset(0, 3), blurRadius: 16)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListTile(
                title: CustomText(
                  text: title,
                  size: 18,
                  weight: FontWeight.bold,
                  color: Colors.white,
                ),
                subtitle: CustomText(
                  text: subtitle,
                  size: 18,
                  weight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: value,
                    size: 36,
                    weight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}