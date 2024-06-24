import 'package:pokemon_flutter/domain/base/usecase_request.dart';

class GetPokemonRequest implements UsecaseRequest {
  final String id;

  const GetPokemonRequest({
    required this.id,
  });
}