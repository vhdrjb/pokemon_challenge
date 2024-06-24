import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_flutter/data/base/dto.dart';

part 'pokemon_list_dto.freezed.dart';

part 'pokemon_list_dto.g.dart';

@freezed
class PokemonListDto with _$PokemonListDto implements Dto {
  const factory PokemonListDto({
    int? count,
    String? next,
    String? previous,
    List<PokemonInfoDto>? results,
  }) = _PokemonListDto;

  factory PokemonListDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonListDtoFromJson(json);
}

@freezed
class PokemonInfoDto with _$PokemonInfoDto implements Dto {
  const factory PokemonInfoDto({
    String? name,
    String? url,
  }) = _PokemonInfoDto;

  factory PokemonInfoDto.fromJson(Map<String, dynamic> json) =>
      _$PokemonInfoDtoFromJson(json);
}
