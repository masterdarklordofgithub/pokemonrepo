part of 'poke_cubit.dart';

@freezed
class PokeState with _$PokeState {
  factory PokeState({
    @Default(null) String? error,
    @Default(false) bool isLoading,
    @Default([]) List<Pokemon> allPokemons,
    @Default([]) List<Pokemon> alreadyShownPokemon,
    @Default(null) Pokemon? currentPokemon,
    @Default(true) bool isMale,
    @Default(0) int imageIndex,
  }) = _PokeState;

  set ismale(bool ismale) {}
}
