import 'package:flutter/material.dart';

import 'power_badge.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff48cfb0),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bulbasaur',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                PowerBadge(text: "fire"),
                PowerBadge(text: "water"),
              ],
            ),
          ),
        ),
        Positioned(
          right: 0.0,
          bottom: 0.0,
          child: Image.network(
            'http://www.serebii.net/pokemongo/pokemon/001.png',
            width: 100.0,
          ),
        ),
      ],
    );
  }
}
