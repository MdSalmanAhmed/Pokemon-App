import 'package:flutter/material.dart';

import '../Widgets/my_title.dart';
import '../Widgets/pokemon_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              MyTitle(text: "Pokedex", color: Colors.red,),
              Expanded(
                flex: 12,
                child: Container(
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 3,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
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
        ));
  }
}
