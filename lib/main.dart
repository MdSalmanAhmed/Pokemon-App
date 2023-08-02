import 'package:flutter/material.dart';

import 'Widgets/pokemon_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.bento_rounded,
                  color: Colors.black,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Poekdex",
                    style:
                        TextStyle(fontSize: 34.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Container(
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      children: [
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                        PokemonCard(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
