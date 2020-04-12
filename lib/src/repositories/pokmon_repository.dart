import 'package:dio/dio.dart';
import 'package:poke_api_search/src/models/pokemon_model.dart';

class PokemonRepository {
  final Dio _dio = Dio();

  Future<PokemonModel> get(int num) async {
    var response = await _dio.get('https://pokeapi.co/api/v2/pokemon/$num/');

    return PokemonModel.fromJson(response.data);
  }
}
