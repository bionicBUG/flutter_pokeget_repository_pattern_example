import 'package:dio/dio.dart';
import 'package:pokeget/models/poke_model.dart';
import 'package:pokeget/repositories/poke_repository.dart';
import 'package:pokeget/repositories/poke_repository_interface.dart';

class HomeController {
  final IPokeRepository _pokeRepository = PokeRepository(Dio());

  Future<List<PokeModel>> fetchPoke() {
    return _pokeRepository.getAllPoke();
  }
}
