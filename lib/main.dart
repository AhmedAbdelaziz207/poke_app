import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/pokemon/cubit/pokemon_cubit.dart';
import 'features/pokemon/ui/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocProvider(
        create: (context) => PokemonCubit()..loadCharacters() ,
        child: const PokemonScreen(),
      ),
    );
  }
}

