import 'package:flutter/material.dart';
import 'package:poke_app/data/model/pokemon.dart';
import 'package:poke_app/features/character_details/components/character_types_list.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({required this.pokemon, super.key});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 120),
        // Space for the image
        Text(
          pokemon.name!,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 45),
        // Space for the image
        Text(
          "Height: ${pokemon.height!}",
          style: const TextStyle(
            fontSize: 18,
          ),
        ),

        const SizedBox(height: 45),
        // Space for the image
        Text(
          "Weight: ${pokemon.weight!}",
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 45),
        // Space for the image

        const Text(
          "Types",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 45),
        // Space for the image
        SizedBox(
          height: 40,
          width: 160,
          child: CharactersDataList(data: pokemon.type!),
        ),
        const SizedBox(height: 45),

        const Text(
          "Weakness",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 45),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: Align(
            alignment: Alignment.center,
            child: CharactersDataList(
              data: pokemon.weaknesses!,
              backgroundColor: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
