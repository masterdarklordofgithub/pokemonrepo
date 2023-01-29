import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprites_model.freezed.dart';
part 'sprites_model.g.dart';

@freezed
class Sprites with _$Sprites {
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

  factory Sprites.fromJson(Map<String, dynamic> map) => _$SpritesFromJson(map);
}
