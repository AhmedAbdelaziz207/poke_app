import 'package:flutter/material.dart';
import 'package:poke_app/data/model/pokemon.dart';

import 'components/character_details.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key, this.pokemon});

  final Pokemon? pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(pokemon!.name!, style: const TextStyle(color: Colors.white),),
        backgroundColor: Colors.transparent ,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      backgroundColor: Colors.cyan.shade500,
      body: Container(
        color: Colors.cyanAccent,
        child: Stack(
          children: [
            Container(
              color: Colors.cyanAccent,
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(

                        width: double.infinity,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            20
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 40 , horizontal: 20),
                        child:CharacterDetails(pokemon:  pokemon!),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: Hero(
                tag: pokemon!.id.toString(),
                child: Image.network(
                  pokemon?.img ?? "assets/images/character_image.png",
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
