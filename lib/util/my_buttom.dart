import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButtom({
    super.key,
    required this.iconImagePath,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // icon
        Container(
          height: 90,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20,
                spreadRadius: 6,
              ),
            ],
          ),
          padding: EdgeInsets.all(18),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(height: 10),
        // text
        Text(
          buttonText,
          style: TextStyle(
              color: Colors.grey.shade800, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
