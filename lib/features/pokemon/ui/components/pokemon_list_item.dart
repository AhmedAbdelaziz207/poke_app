import 'package:flutter/material.dart';
import 'package:poke_app/features/widgets/hero_image.dart';

class PokemonListItem extends StatelessWidget {
  const PokemonListItem(
      {super.key,
      this.title,
      this.imageUrl,
      this.onPressed,
      required this.tag});

  final String? title;

  final String? imageUrl;
  final String tag;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        elevation: 12,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HeroImage(
                tag: tag,
                image: imageUrl,
              ),
              Expanded(
                child: Text(
                  title ?? "No Title ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
