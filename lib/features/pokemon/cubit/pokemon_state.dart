part of 'pokemon_cubit.dart';

@immutable
sealed class PokemonState {}

final class HomeInitial extends PokemonState {}
final class HomeCharactersLoading extends PokemonState {}
final class HomeCharactersLoadedSuccessfully extends PokemonState {}
final class HomeCharactersLoadingFailed extends PokemonState {}
