import 'package:dartz/dartz.dart';
import 'package:pokemon_app/models/pokemon_model.dart';

abstract class IPokemonRepository {
  Future<Either<String, List<Pokemon>>> getPokemons();
}
