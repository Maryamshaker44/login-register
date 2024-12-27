import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomImage extends StatelessWidget {
  final String images;
  const CustomImage({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        // margin: EdgeInsets.all(35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          color: Colors.grey[300],
        ),
        child: SvgPicture.asset(
          images,
          width: 60,
          height: 60,
        ));
  }
}
