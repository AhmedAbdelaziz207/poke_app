import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_app/features/character_details/character_details_screen.dart';
import 'package:poke_app/features/pokemon/cubit/pokemon_cubit.dart';

import '../../../data/model/pokemon.dart';
import 'components/pokemon_list_item.dart';

class PokemonScreen extends StatelessWidget {
  const PokemonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("HomeScreen");
    print(context.read<PokemonCubit>().pokemons);

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Poke App",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan.shade500,
        ),
        body: BlocBuilder<PokemonCubit, PokemonState>(
          builder: (context, state) {
            if (state is HomeCharactersLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeCharactersLoadedSuccessfully) {
              return GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  var pokemon =
                      context.read<PokemonCubit>().pokemons[index];

                  return PokemonListItem(
                    tag: pokemon.id.toString(),
                    title: pokemon.name!,
                    imageUrl: pokemon.img,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CharacterDetailsScreen(
                                pokemon: pokemon);
                          },
                        ),
                      );
                    },
                  );
                },
                itemCount:
                    context.read<PokemonCubit>().pokemons.length,
              );
            } else {
              return const Center(
                child: Text(
                  "Something went wrong ",
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              );
            }
          },
        ));
  }
}
