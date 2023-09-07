import 'package:flutter/material.dart';

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 230, 234, 255),
              ),
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Pok%C3%A9_Ball_icon.svg/1200px-Pok%C3%A9_Ball_icon.svg.png",
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              )),
          const SizedBox(height: 20),
          Text(
            "Charizard",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 10),
          PokemonTypeTag(type: "Fuego"),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PokemonStat(statName: 'Attack', value: 100),
              PokemonStat(statName: 'Defense', value: 60),
              PokemonStat(statName: 'Speed', value: 50),
            ],
          ),
          Expanded(child: Container()),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      hintText: 'Enter Pokémon name or number',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Search'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          )
        ],
      ),
    );
  }
}

//[COMPLETE]
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

//[COMPLETE]
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
