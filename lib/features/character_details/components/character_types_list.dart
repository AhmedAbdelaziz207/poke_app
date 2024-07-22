import 'package:flutter/material.dart';
import 'package:poke_app/data/model/pokemon.dart';

class CharactersDataList extends StatelessWidget {
  const CharactersDataList({super.key, required this.data, this.backgroundColor});
  final List<dynamic> data ;
  final Color ?  backgroundColor ;
  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: data.length ,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: backgroundColor ?? Colors.orange,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Text(
            data[index],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
      return const SizedBox(width: 16,);
    },
    );
  }
}
