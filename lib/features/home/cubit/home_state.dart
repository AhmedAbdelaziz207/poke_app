part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class HomeCharactersLoading extends HomeState {}
final class HomeCharactersLoadedSuccessfully extends HomeState {}
final class HomeCharactersLoadingFailed extends HomeState {}
