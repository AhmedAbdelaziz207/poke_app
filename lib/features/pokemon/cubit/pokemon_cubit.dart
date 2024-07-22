import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_app/data/webservice/pokemon_webservice.dart';

import '../../../data/model/pokemon.dart';

part 'pokemon_state.dart';

class PokemonCubit extends Cubit<PokemonState> {
  PokemonCubit() : super(HomeInitial());
  List<Pokemon> pokemons = [];

  Future<void> loadCharacters() async {
    emit(HomeCharactersLoading());

    await PokemonWebservice.get(
            "Biuni/PokemonGO-Pokedex/master/pokedex.json")
        .then((value) {
      debugPrint("List of pokemons ");
      print(value.data);
      Map<String, dynamic> data = jsonDecode(value.data );

      for (var item in data['pokemon']) {
        Pokemon pokemon = Pokemon.fromJson(item);
        pokemons.add(pokemon);
      }
      emit(HomeCharactersLoadedSuccessfully());
    }).catchError((error) {
      emit(HomeCharactersLoadingFailed());
      print(error.toString());
      throw error;
    });
  }
}
