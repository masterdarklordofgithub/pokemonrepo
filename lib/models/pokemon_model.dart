import 'package:freezed_annotation/freezed_annotation.dart';

import 'sprites_model.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class Pokemon with _$Pokemon {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Pokemon({
    required String name,
    @Default(null) Sprites? sprites,
  }) = _Pokemon;
  factory Pokemon.fromJson(Map<String, dynamic> map) => _$PokemonFromJson(map);
}
