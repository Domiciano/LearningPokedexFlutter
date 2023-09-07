import 'package:flutter/material.dart';

class PokemonStat extends StatelessWidget {
  final String statName;
  final int value;

  const PokemonStat({super.key, required this.statName, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          statName,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        Text(
          value.toString(),
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}