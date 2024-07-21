import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key, required this.tag, this.image, this.onTap});
  final String tag;
  final String? image ;
  final  Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return   Hero(
      tag: tag ,
      child: Material(
        color: Colors.transparent ,
        child: InkWell(
          onTap: onTap,
          child: Image.asset(
            image ?? "assets/images/character_image.png",
          ),
        ),
      ),
    );
  }
}
