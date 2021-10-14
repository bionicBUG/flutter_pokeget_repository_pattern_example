import 'package:pokeget/models/poke_model.dart';

abstract class IPokeRepository {
  Future<List<PokeModel>> getAllPoke();
}
