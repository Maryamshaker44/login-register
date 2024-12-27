import 'package:flutter/material.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xff143D5A),
        ),
        child: Image.asset(
          "assets/images/logoo.png",
          width: 150,
          height: 150,
        ));
  }
}
