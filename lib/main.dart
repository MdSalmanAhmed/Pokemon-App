import 'package:flutter/material.dart';
import 'package:pokemonapp/Pages/details_page.dart';

import 'Pages/home_page.dart';
import 'Widgets/pokemon_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: HomePage(),
      home: DetailsPage(),
    );
  }
}
