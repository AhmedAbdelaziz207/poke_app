import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_app/data/webservice/pokemon_webservice.dart';

import '../../../data/model/pokemon.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  List<Pokemon> pokemons = [];

  Future<void> loadCharacters() async {
    emit(HomeCharactersLoading());

    await PokemonWebservice.get(
            "Biuni/PokemonGO-Pokedex/master/pokedex.json")
        .then((value) {
      print(value);

      for (var item in value.data['pokemon']) {
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
