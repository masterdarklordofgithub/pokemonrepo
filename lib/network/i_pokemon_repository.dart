import 'package:dartz/dartz.dart';
import 'package:pokemon_app/models/pokemon_model.dart';
import 'package:pokemon_app/models/sprites_model.dart';

abstract class IPokemonRepository {
  Future<Either<String, List<Pokemon>>> fetchPokemons();
  Future<Either<String, Sprites>> fetchPokemonSprites();
}
