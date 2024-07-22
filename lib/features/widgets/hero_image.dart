import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key, required this.tag, this.image});
  final String tag;
  final String? image ;
  @override
  Widget build(BuildContext context) {
    return   Hero(
      tag: tag ,
      child: Material(
        color: Colors.transparent ,
        child: Image.network(
          image ?? "assets/images/character_image.png",
          width: 100,
          height: 140,
        ),
      ),
    );
  }
}
