import 'package:flutter/material.dart';


class PokemonTypeTag extends StatelessWidget {
  final String type;

  const PokemonTypeTag({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        type,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}