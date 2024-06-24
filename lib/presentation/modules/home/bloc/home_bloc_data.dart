import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/domain.dart';

part 'home_bloc_data.freezed.dart';

@freezed
class HomeBlocData with _$HomeBlocData {
  const factory HomeBlocData({
    @Default(0) int offset,
    @Default(false) bool isLastPage,
    @Default(false) bool loading,
    @Default([]) Iterable<PokemonEntity> data
  }) = _HomeBlocData;
}
