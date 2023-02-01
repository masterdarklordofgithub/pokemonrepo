import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/models/pokemon_model.dart';
import 'package:pokemon_app/network/config.dart';

import '../models/sprites_model.dart';
import 'i_pokemon_repository.dart';

@LazySingleton(as: IPokemonRepository)
class PokemonRepository implements IPokemonRepository {
  final config = Config();
  @override
  Future<Either<String, List<Pokemon>>> fetchPokemons() async {
    // TODO: implement getPokemons
    try {
      final response = await http.get(Uri.parse(config.api + config.offset));
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      return Right((body["results"] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e))
          .toList());
    } catch (e) {
      return const Left("Error getting pokemon list");
    }
  }

  @override
  Future<Either<String, Sprites>> fetchPokemonSprites() async {
    // TODO: implement getPokemons
    List<String> spriteUrls = [];

    try {
      final response = await http.get(Uri.parse("${config.api}pikachu"));
      final body = jsonDecode(response.body) as Map<String, dynamic>;

      // for (var sprite in body['sprites']) {
      //   if (sprite != null) {
      //     spriteUrls.add(sprite.toString());
      //   }
      // }
      return Right((Sprites.fromJson(body['sprites'])));
    } catch (e) {
      return const Left("Error getting pokemon spriteUrls");
    }
  }
}
