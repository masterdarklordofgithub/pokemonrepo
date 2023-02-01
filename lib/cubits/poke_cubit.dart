import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pokemon_app/network/i_pokemon_repository.dart';

import '../models/pokemon_model.dart';

part 'poke_cubit.freezed.dart';
part 'poke_state.dart';

@injectable
class PokeCubit extends Cubit<PokeState> {
  final IPokemonRepository pokemonRepository;

  PokeCubit({
    required this.pokemonRepository,
  }) : super(PokeState());

  void changeGender(bool ismale) {
    emit(state.copyWith(isMale: ismale));
  }

  void getAllPokemons() async {
    emit(state.copyWith(isLoading: true));
    final response = await pokemonRepository.fetchPokemons();

    response.fold(
      (failure) => emit(
        state.copyWith(
          error: failure,
          isLoading: false,
        ),
      ),
      (pokemonList) {
        emit(
          state.copyWith(
            allPokemons: pokemonList,
            isLoading: false,
          ),
        );
        pickRandomPokemon();
      },
    );
    // final randomId = 1 + (Random().nextInt(_totalPokemon));
    // final response = await http
    //     .get(Uri.parse('https://pokeapi.co/api/v2/pokemon/$randomId'));
    // if (response.statusCode == 200) {
    //   final json = jsonDecode(response.body);
    //   emit(json['name']);
    // } else {
    //   emit('Error getting Pokemon');
    // }
  }

  void pickRandomPokemon() async {
    final Random random = Random();
    int totalPokemon = state.allPokemons.length;
    final pokemons = [...state.allPokemons];
    final currentPokemon = pokemons.removeAt(random.nextInt(totalPokemon));

    emit(
      state.copyWith(
        currentPokemon: currentPokemon,
        allPokemons: pokemons,
        alreadyShownPokemon: state.alreadyShownPokemon + [currentPokemon],
      ),
    );
    getPokemonSprites(currentPokemon.name);
  }

  // Future<String> _getPokemonSprite() async {
  //   var response =
  //       await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon/pikachu'));
  //   if (response.statusCode == 200) {
  //     var pokemon = jsonDecode(response.body);
  //     return pokemon['sprites']['front_default'];
  //   }
  //   throw Exception('Failed to load Pokemon sprite');
  // }
  void getPokemonSprites(String pokemonName) async {
    emit(state.copyWith(isLoading: true));
    if (state.currentPokemon?.sprites != null) return;
    final response = await pokemonRepository.fetchPokemonSprites(pokemonName);

    response.fold(
      (failure) => emit(
        state.copyWith(
          error: failure,
          isLoading: false,
        ),
      ),
      (pokemonSprites) {
        final updatedPokemon =
            state.currentPokemon!.copyWith(sprites: pokemonSprites);
        emit(
          state.copyWith(
            currentPokemon: updatedPokemon,
            isLoading: false,
          ),
        );
      },
    );
  }

  // void nextPokemonSprite() {
  //   emit(state.copyWith(isLoading: true));
  //   if (state.currentPokemon?.sprites != null) return;
  //   return state.currentPokemon!.copyWith(sprites: pokemonSprites.);
  // }
}


// class PokemonData {
//   final List<String> _pokemonList = [];
//   final Random _random = Random();
//   final int _totalPokemon = 964;

//   Future<String> getRandomPokemon() async {
//     if (_pokemonList.length == _totalPokemon) {
//       return Future.error('All pokemon has been generated already');
//     }

//     int id = _random.nextInt(_totalPokemon);
//     while (_pokemonList.contains(id)) {
//       id = _random.nextInt(_totalPokemon);
//     }
//     final response =
//         await http.get(Uri.parse("https://pokeapi.co/api/v2/pokemon/$id/"));
//     if (response.statusCode == 200) {
//       final jsonResponse = jsonDecode(response.body);
//       _pokemonList.add(jsonResponse["name"]);
//       return jsonResponse["name"];
//     } else {
//       return Future.error("Error getting Pokemon");
//     }
//   }
// }

// class RandomPokemonCubit extends Cubit<String> {
//   RandomPokemonCubit(PokemonData data) : super("") {
//     data.getRandomPokemon().then((pokemon) => emit(pokemon));
//   }

//   void getNewPokemon(PokemonData data) async {
//     data.getRandomPokemon().then((pokemon) => emit(pokemon));
//   }
// }
