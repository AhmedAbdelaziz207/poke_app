import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poke_app/features/home/cubit/home_cubit.dart';

import '../../character_details/character_details_screen.dart';
import 'components/home_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Poke App",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan.shade500,
        ),
        body: BlocListener<HomeCubit, HomeState >(
          listener: (context, state) {
          },
          child: GridView(
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            children: [
              HomeListItem(
                title: "Poke Character",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CharacterDetailsScreen(),
                    ),
                  );
                }, tag: 'image',
              ),
              HomeListItem(
                title: "Poke Character",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CharacterDetailsScreen(),
                    ),
                  );
                }, tag: 'image2',
              ), HomeListItem(
                title: "Poke Character",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CharacterDetailsScreen(),
                    ),
                  );
                }, tag: 'image3',
              ),
              HomeListItem(
                title: "Poke Character",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CharacterDetailsScreen(),
                    ),
                  );
                }, tag: 'image4',
              ), HomeListItem(
                title: "Poke Character",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CharacterDetailsScreen(),
                    ),
                  );
                }, tag: 'image5',
              ),
              HomeListItem(
                title: "Poke Character",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const CharacterDetailsScreen(),
                    ),
                  );
                }, tag: 'image6',
              ),
            ],
          ),
        ));
  }


}
