import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/models/pokemon_model.dart';
import 'package:pokemon_app/network/config.dart';

import 'i_pokemon_repository.dart';

@LazySingleton(as: IPokemonRepository)
class PokemonRepository implements IPokemonRepository {
  final config = Config();
  @override
  Future<Either<String, List<Pokemon>>> getPokemons() async {
    // TODO: implement getPokemons
    try {
      final response = await http.get(Uri.parse(config.api));
      final body = response.body as Map<String, dynamic>;
      return Right((body["results"] as List<dynamic>)
          .map((e) => Pokemon.fromJson(e))
          .toList());
    } catch (e) {
      return const Left("Error getting pokemon list");
    }

    throw UnimplementedError();
  }
}
