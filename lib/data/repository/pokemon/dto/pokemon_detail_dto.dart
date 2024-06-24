import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_flutter/data/base/dto.dart';

part 'pokemon_detail_dto.freezed.dart';
part 'pokemon_detail_dto.g.dart';

@freezed
class PokemonDetailDto with _$PokemonDetailDto implements Dto{
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PokemonDetailDto({
    int? baseExperience,
    List<Species>? forms,
    int? height,
    List<dynamic>? heldItems,
    int? id,
    bool? isDefault,
    String? locationAreaEncounters,
    String? name,
    int? order,
    Species? species,
    Sprites? sprites,
    List<Type>? types,
    int? weight,
  }) = _PokemonDetailDto;

  factory PokemonDetailDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailDtoFromJson(json);
}

@freezed
class Sprites with _$Sprites {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Sprites({
    String? frontDefault,
    Other? other,
  }) = _Sprites;

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

@freezed
class Other with _$Other {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Other({
    @JsonKey(name: 'official-artwork')
    Sprites? officialArtwork,
  }) = _Other;

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
}


@freezed
class Species with _$Species {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Species({
    String? name,
    String? url,
  }) = _Species;

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
}


@freezed
class Type with _$Type {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Type({
    int? slot,
    Species? type,
  }) = _Type;

  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
}
