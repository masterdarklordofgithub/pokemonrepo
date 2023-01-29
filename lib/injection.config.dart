// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pokemon_app/cubits/poke_cubit.dart' as _i5;
import 'package:pokemon_app/network/i_pokemon_repository.dart' as _i3;
import 'package:pokemon_app/network/pokemon_repository.dart' as _i4;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IPokemonRepository>(() => _i4.PokemonRepository());
    gh.factory<_i5.PokeCubit>(
        () => _i5.PokeCubit(pokemonRepository: gh<_i3.IPokemonRepository>()));
    return this;
  }
}
