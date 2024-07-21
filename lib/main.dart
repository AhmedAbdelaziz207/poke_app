import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_app/features/home/cubit/home_cubit.dart';

import 'features/home/ui/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: BlocProvider(
        create: (context) => HomeCubit()..loadCharacters() ,
        child: const HomeScreen(),
      ),
    );
  }
}

