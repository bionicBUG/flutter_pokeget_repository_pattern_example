import 'package:dio/dio.dart';
import 'package:pokeget/models/poke_model.dart';
import 'package:pokeget/repositories/poke_repository_interface.dart';

class PokeRepository implements IPokeRepository {
  final Dio _dio;

  PokeRepository(this._dio);

  @override
  Future<List<PokeModel>> getAllPoke() async {
    List<PokeModel> poke = [];

    var response = await _dio.get("https://pokeapi.co/api/v2/pokemon/");

    response.data['results'].map((pokemon) {
      poke.add(PokeModel.fromJson(pokemon));
    }).toList();

    return poke;
  }
}
