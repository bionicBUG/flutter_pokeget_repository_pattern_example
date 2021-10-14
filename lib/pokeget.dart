import 'package:flutter/material.dart';
import 'package:pokeget/screens/home.dart';

class PokeGet extends StatelessWidget {
  const PokeGet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}