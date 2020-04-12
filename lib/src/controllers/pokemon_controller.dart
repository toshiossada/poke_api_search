import 'package:poke_api_search/src/models/pokemon_model.dart';
import 'package:poke_api_search/src/repositories/pokmon_repository.dart';

class PokemonController {
  static Future<PokemonModel> get(int num) {
    return PokemonRepository().get(num);
  }
}
