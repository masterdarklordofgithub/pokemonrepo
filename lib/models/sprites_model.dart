import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites_model.freezed.dart';
part 'sprites_model.g.dart';

@freezed
class Sprites with _$Sprites {
  const Sprites._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Sprites({
    required String backDefault,
    required String backFemale,
    required String backShiny,
    required String backShinyFemale,
    required String frontDefault,
    required String frontShiny,
    required String frontShinyFemale,
    required String frontFemale,
  }) = _Sprites;

  List<String> get maleImages =>
      [backDefault, backShiny, frontDefault, frontShiny];
  List<String> get femaleImages =>
      [backFemale, backShinyFemale, frontFemale, frontShinyFemale];

  factory Sprites.fromJson(Map<String, dynamic> map) => _$SpritesFromJson(map);
}
