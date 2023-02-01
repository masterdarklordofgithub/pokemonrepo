// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poke_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PokeState {
  String? get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  List<Pokemon> get allPokemons => throw _privateConstructorUsedError;
  List<Pokemon> get alreadyShownPokemon => throw _privateConstructorUsedError;
  Pokemon? get currentPokemon => throw _privateConstructorUsedError;
  bool get isMale => throw _privateConstructorUsedError;
  int get imageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokeStateCopyWith<PokeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokeStateCopyWith<$Res> {
  factory $PokeStateCopyWith(PokeState value, $Res Function(PokeState) then) =
      _$PokeStateCopyWithImpl<$Res, PokeState>;
  @useResult
  $Res call(
      {String? error,
      bool isLoading,
      List<Pokemon> allPokemons,
      List<Pokemon> alreadyShownPokemon,
      Pokemon? currentPokemon,
      bool isMale,
      int imageIndex});

  $PokemonCopyWith<$Res>? get currentPokemon;
}

/// @nodoc
class _$PokeStateCopyWithImpl<$Res, $Val extends PokeState>
    implements $PokeStateCopyWith<$Res> {
  _$PokeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = null,
    Object? allPokemons = null,
    Object? alreadyShownPokemon = null,
    Object? currentPokemon = freezed,
    Object? isMale = null,
    Object? imageIndex = null,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allPokemons: null == allPokemons
          ? _value.allPokemons
          : allPokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      alreadyShownPokemon: null == alreadyShownPokemon
          ? _value.alreadyShownPokemon
          : alreadyShownPokemon // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      currentPokemon: freezed == currentPokemon
          ? _value.currentPokemon
          : currentPokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PokemonCopyWith<$Res>? get currentPokemon {
    if (_value.currentPokemon == null) {
      return null;
    }

    return $PokemonCopyWith<$Res>(_value.currentPokemon!, (value) {
      return _then(_value.copyWith(currentPokemon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PokeStateCopyWith<$Res> implements $PokeStateCopyWith<$Res> {
  factory _$$_PokeStateCopyWith(
          _$_PokeState value, $Res Function(_$_PokeState) then) =
      __$$_PokeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? error,
      bool isLoading,
      List<Pokemon> allPokemons,
      List<Pokemon> alreadyShownPokemon,
      Pokemon? currentPokemon,
      bool isMale,
      int imageIndex});

  @override
  $PokemonCopyWith<$Res>? get currentPokemon;
}

/// @nodoc
class __$$_PokeStateCopyWithImpl<$Res>
    extends _$PokeStateCopyWithImpl<$Res, _$_PokeState>
    implements _$$_PokeStateCopyWith<$Res> {
  __$$_PokeStateCopyWithImpl(
      _$_PokeState _value, $Res Function(_$_PokeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
    Object? isLoading = null,
    Object? allPokemons = null,
    Object? alreadyShownPokemon = null,
    Object? currentPokemon = freezed,
    Object? isMale = null,
    Object? imageIndex = null,
  }) {
    return _then(_$_PokeState(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      allPokemons: null == allPokemons
          ? _value._allPokemons
          : allPokemons // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      alreadyShownPokemon: null == alreadyShownPokemon
          ? _value._alreadyShownPokemon
          : alreadyShownPokemon // ignore: cast_nullable_to_non_nullable
              as List<Pokemon>,
      currentPokemon: freezed == currentPokemon
          ? _value.currentPokemon
          : currentPokemon // ignore: cast_nullable_to_non_nullable
              as Pokemon?,
      isMale: null == isMale
          ? _value.isMale
          : isMale // ignore: cast_nullable_to_non_nullable
              as bool,
      imageIndex: null == imageIndex
          ? _value.imageIndex
          : imageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PokeState implements _PokeState {
  _$_PokeState(
      {this.error = null,
      this.isLoading = false,
      final List<Pokemon> allPokemons = const [],
      final List<Pokemon> alreadyShownPokemon = const [],
      this.currentPokemon = null,
      this.isMale = true,
      this.imageIndex = 0})
      : _allPokemons = allPokemons,
        _alreadyShownPokemon = alreadyShownPokemon;

  @override
  @JsonKey()
  final String? error;
  @override
  @JsonKey()
  final bool isLoading;
  final List<Pokemon> _allPokemons;
  @override
  @JsonKey()
  List<Pokemon> get allPokemons {
    if (_allPokemons is EqualUnmodifiableListView) return _allPokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPokemons);
  }

  final List<Pokemon> _alreadyShownPokemon;
  @override
  @JsonKey()
  List<Pokemon> get alreadyShownPokemon {
    if (_alreadyShownPokemon is EqualUnmodifiableListView)
      return _alreadyShownPokemon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_alreadyShownPokemon);
  }

  @override
  @JsonKey()
  final Pokemon? currentPokemon;
  @override
  @JsonKey()
  final bool isMale;
  @override
  @JsonKey()
  final int imageIndex;

  @override
  String toString() {
    return 'PokeState(error: $error, isLoading: $isLoading, allPokemons: $allPokemons, alreadyShownPokemon: $alreadyShownPokemon, currentPokemon: $currentPokemon, isMale: $isMale, imageIndex: $imageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PokeState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._allPokemons, _allPokemons) &&
            const DeepCollectionEquality()
                .equals(other._alreadyShownPokemon, _alreadyShownPokemon) &&
            (identical(other.currentPokemon, currentPokemon) ||
                other.currentPokemon == currentPokemon) &&
            (identical(other.isMale, isMale) || other.isMale == isMale) &&
            (identical(other.imageIndex, imageIndex) ||
                other.imageIndex == imageIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      isLoading,
      const DeepCollectionEquality().hash(_allPokemons),
      const DeepCollectionEquality().hash(_alreadyShownPokemon),
      currentPokemon,
      isMale,
      imageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PokeStateCopyWith<_$_PokeState> get copyWith =>
      __$$_PokeStateCopyWithImpl<_$_PokeState>(this, _$identity);
}

abstract class _PokeState implements PokeState {
  factory _PokeState(
      {final String? error,
      final bool isLoading,
      final List<Pokemon> allPokemons,
      final List<Pokemon> alreadyShownPokemon,
      final Pokemon? currentPokemon,
      final bool isMale,
      final int imageIndex}) = _$_PokeState;

  @override
  String? get error;
  @override
  bool get isLoading;
  @override
  List<Pokemon> get allPokemons;
  @override
  List<Pokemon> get alreadyShownPokemon;
  @override
  Pokemon? get currentPokemon;
  @override
  bool get isMale;
  @override
  int get imageIndex;
  @override
  @JsonKey(ignore: true)
  _$$_PokeStateCopyWith<_$_PokeState> get copyWith =>
      throw _privateConstructorUsedError;
}
