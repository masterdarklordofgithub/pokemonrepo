import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_app/injection.dart';

import '../cubits/poke_cubit.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //bloc adds in tree beneath; PokemonScaffold
      home: BlocProvider(
          create: (context) => getIt<PokeCubit>()..getAllPokemons(),
          child: PokemonScaffold()),
    );
  }
}

class PokemonScaffold extends StatelessWidget {
  _tapButton() {
    debugPrint("Pokeinfo1");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Pokémon"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 194, 252),
        actions: [
          IconButton(
            onPressed: () => debugPrint("Pokeinfo2"),
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: _tapButton,
            icon: const Icon(Icons.alarm),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: (() => context.read<PokeCubit>().pickRandomPokemon()),
        child: const Icon(Icons.skip_next),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "fruit",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "ability",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: "ability",
          ),
        ],
        onTap: (int i) => debugPrint("pressed button: $i"),
      ),
      backgroundColor: const Color.fromARGB(255, 173, 221, 201),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<PokeCubit, PokeState>(builder: (context, state) {
              return Column(
                children: [
                  IconButton(
                    onPressed: () =>
                        context.read<PokeCubit>().changeGender(false),
                    icon: const Icon(Icons.female),
                  ),
                  IconButton(
                    onPressed: () =>
                        context.read<PokeCubit>().changeGender(true),
                    icon: const Icon(Icons.male),
                  ),
                  Text(state.currentPokemon?.name ?? "",
                      style: Theme.of(context).textTheme.headline4),
                ],
              );
            }),
            BlocBuilder<PokeCubit, PokeState>(
              builder: (context, state) {
                if (state.currentPokemon?.sprites?.femaleImages != null) {
                  final list = state.isMale
                      ? state.currentPokemon!.sprites!.maleImages
                      : state.currentPokemon!.sprites!.femaleImages;
                  return CachedNetworkImage(imageUrl: list![state.imageIndex]);
                } else if (state.currentPokemon?.sprites?.femaleImages ==
                    null) {
                  final list = state.currentPokemon!.sprites!.maleImages;
                  context.read<PokeCubit>().changeGender(true);
                  return CachedNetworkImage(imageUrl: list[state.imageIndex]);
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: const Color.fromARGB(255, 89, 54, 244),
                side: const BorderSide(
                  color: Color.fromARGB(255, 54, 82, 244),
                ),
              ),
              onPressed: (() => context.read<PokeCubit>().pickRandomPokemon()),
              child: const Text("Tap on this"),
            ),
          ],
        ),
      ),
    );
  }
}
