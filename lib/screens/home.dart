import 'package:flutter/material.dart';
import 'package:pokeget/controller/home_controller.dart';
import 'package:pokeget/models/poke_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final HomeController _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PokeModel>>(
        future: _homeController.fetchPoke(),
        builder: (context, snapshot) {
          var pokemons = snapshot.data;
          if (pokemons == null) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: pokemons.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(pokemons[index].name.toString()));
            },
          );
        },
      ),
    );
  }
}
