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
    // final RandomPokemonCubit randomPokemonCubit =
    //TODO: blocbuilder ist? only builds within scope instead of .watch listener that builds entire tree
    // context.watch<RandomPokemonCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Pokémon"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 252, 198, 3),
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
        onPressed: (() => debugPrint("Hello")),
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
      backgroundColor: Colors.amberAccent.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<PokeCubit, PokeState>(builder: (context, state) {
              return Text(state.currentPokemon?.name ?? "",
                  style: Theme.of(context).textTheme.headline4);
            }),
            // Text(
            //   //TODO in textwidget wrap w. builder. (blocbuilder)
            //   randomPokemonCubit.state,
            //   style: Theme.of(context).textTheme.headline4,
            // ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<PokeCubit>().pickRandomPokemon();
                // randomPokemonCubit.getRandomPokemon();
              },
              child: const Text('Get Random Pokemon'),
            ),
          ],
        ),
      ),
    );
  }
}
