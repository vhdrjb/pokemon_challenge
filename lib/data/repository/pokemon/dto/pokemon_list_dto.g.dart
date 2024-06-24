// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonListDtoImpl _$$PokemonListDtoImplFromJson(Map<String, dynamic> json) =>
    _$PokemonListDtoImpl(
      count: (json['count'] as num?)?.toInt(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PokemonInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonListDtoImplToJson(
        _$PokemonListDtoImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };

_$PokemonInfoDtoImpl _$$PokemonInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$PokemonInfoDtoImpl(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$PokemonInfoDtoImplToJson(
        _$PokemonInfoDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
