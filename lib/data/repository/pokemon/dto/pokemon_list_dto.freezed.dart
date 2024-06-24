// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonListDto _$PokemonListDtoFromJson(Map<String, dynamic> json) {
  return _PokemonListDto.fromJson(json);
}

/// @nodoc
mixin _$PokemonListDto {
  int? get count => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<PokemonInfoDto>? get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonListDtoCopyWith<PokemonListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonListDtoCopyWith<$Res> {
  factory $PokemonListDtoCopyWith(
          PokemonListDto value, $Res Function(PokemonListDto) then) =
      _$PokemonListDtoCopyWithImpl<$Res, PokemonListDto>;
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PokemonInfoDto>? results});
}

/// @nodoc
class _$PokemonListDtoCopyWithImpl<$Res, $Val extends PokemonListDto>
    implements $PokemonListDtoCopyWith<$Res> {
  _$PokemonListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonInfoDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonListDtoImplCopyWith<$Res>
    implements $PokemonListDtoCopyWith<$Res> {
  factory _$$PokemonListDtoImplCopyWith(_$PokemonListDtoImpl value,
          $Res Function(_$PokemonListDtoImpl) then) =
      __$$PokemonListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? count,
      String? next,
      String? previous,
      List<PokemonInfoDto>? results});
}

/// @nodoc
class __$$PokemonListDtoImplCopyWithImpl<$Res>
    extends _$PokemonListDtoCopyWithImpl<$Res, _$PokemonListDtoImpl>
    implements _$$PokemonListDtoImplCopyWith<$Res> {
  __$$PokemonListDtoImplCopyWithImpl(
      _$PokemonListDtoImpl _value, $Res Function(_$PokemonListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = freezed,
  }) {
    return _then(_$PokemonListDtoImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<PokemonInfoDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonListDtoImpl
    with DiagnosticableTreeMixin
    implements _PokemonListDto {
  const _$PokemonListDtoImpl(
      {this.count,
      this.next,
      this.previous,
      final List<PokemonInfoDto>? results})
      : _results = results;

  factory _$PokemonListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonListDtoImplFromJson(json);

  @override
  final int? count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<PokemonInfoDto>? _results;
  @override
  List<PokemonInfoDto>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonListDto(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonListDto'))
      ..add(DiagnosticsProperty('count', count))
      ..add(DiagnosticsProperty('next', next))
      ..add(DiagnosticsProperty('previous', previous))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonListDtoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonListDtoImplCopyWith<_$PokemonListDtoImpl> get copyWith =>
      __$$PokemonListDtoImplCopyWithImpl<_$PokemonListDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonListDtoImplToJson(
      this,
    );
  }
}

abstract class _PokemonListDto implements PokemonListDto {
  const factory _PokemonListDto(
      {final int? count,
      final String? next,
      final String? previous,
      final List<PokemonInfoDto>? results}) = _$PokemonListDtoImpl;

  factory _PokemonListDto.fromJson(Map<String, dynamic> json) =
      _$PokemonListDtoImpl.fromJson;

  @override
  int? get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<PokemonInfoDto>? get results;
  @override
  @JsonKey(ignore: true)
  _$$PokemonListDtoImplCopyWith<_$PokemonListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonInfoDto _$PokemonInfoDtoFromJson(Map<String, dynamic> json) {
  return _PokemonInfoDto.fromJson(json);
}

/// @nodoc
mixin _$PokemonInfoDto {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonInfoDtoCopyWith<PokemonInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonInfoDtoCopyWith<$Res> {
  factory $PokemonInfoDtoCopyWith(
          PokemonInfoDto value, $Res Function(PokemonInfoDto) then) =
      _$PokemonInfoDtoCopyWithImpl<$Res, PokemonInfoDto>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$PokemonInfoDtoCopyWithImpl<$Res, $Val extends PokemonInfoDto>
    implements $PokemonInfoDtoCopyWith<$Res> {
  _$PokemonInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonInfoDtoImplCopyWith<$Res>
    implements $PokemonInfoDtoCopyWith<$Res> {
  factory _$$PokemonInfoDtoImplCopyWith(_$PokemonInfoDtoImpl value,
          $Res Function(_$PokemonInfoDtoImpl) then) =
      __$$PokemonInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$PokemonInfoDtoImplCopyWithImpl<$Res>
    extends _$PokemonInfoDtoCopyWithImpl<$Res, _$PokemonInfoDtoImpl>
    implements _$$PokemonInfoDtoImplCopyWith<$Res> {
  __$$PokemonInfoDtoImplCopyWithImpl(
      _$PokemonInfoDtoImpl _value, $Res Function(_$PokemonInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$PokemonInfoDtoImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonInfoDtoImpl
    with DiagnosticableTreeMixin
    implements _PokemonInfoDto {
  const _$PokemonInfoDtoImpl({this.name, this.url});

  factory _$PokemonInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonInfoDtoImplFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PokemonInfoDto(name: $name, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PokemonInfoDto'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonInfoDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonInfoDtoImplCopyWith<_$PokemonInfoDtoImpl> get copyWith =>
      __$$PokemonInfoDtoImplCopyWithImpl<_$PokemonInfoDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _PokemonInfoDto implements PokemonInfoDto {
  const factory _PokemonInfoDto({final String? name, final String? url}) =
      _$PokemonInfoDtoImpl;

  factory _PokemonInfoDto.fromJson(Map<String, dynamic> json) =
      _$PokemonInfoDtoImpl.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$PokemonInfoDtoImplCopyWith<_$PokemonInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
