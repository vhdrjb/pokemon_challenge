// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBlocData {
  int get offset => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Iterable<PokemonEntity> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBlocDataCopyWith<HomeBlocData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocDataCopyWith<$Res> {
  factory $HomeBlocDataCopyWith(
          HomeBlocData value, $Res Function(HomeBlocData) then) =
      _$HomeBlocDataCopyWithImpl<$Res, HomeBlocData>;
  @useResult
  $Res call(
      {int offset,
      bool isLastPage,
      bool loading,
      Iterable<PokemonEntity> data});
}

/// @nodoc
class _$HomeBlocDataCopyWithImpl<$Res, $Val extends HomeBlocData>
    implements $HomeBlocDataCopyWith<$Res> {
  _$HomeBlocDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? isLastPage = null,
    Object? loading = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Iterable<PokemonEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeBlocDataImplCopyWith<$Res>
    implements $HomeBlocDataCopyWith<$Res> {
  factory _$$HomeBlocDataImplCopyWith(
          _$HomeBlocDataImpl value, $Res Function(_$HomeBlocDataImpl) then) =
      __$$HomeBlocDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int offset,
      bool isLastPage,
      bool loading,
      Iterable<PokemonEntity> data});
}

/// @nodoc
class __$$HomeBlocDataImplCopyWithImpl<$Res>
    extends _$HomeBlocDataCopyWithImpl<$Res, _$HomeBlocDataImpl>
    implements _$$HomeBlocDataImplCopyWith<$Res> {
  __$$HomeBlocDataImplCopyWithImpl(
      _$HomeBlocDataImpl _value, $Res Function(_$HomeBlocDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? isLastPage = null,
    Object? loading = null,
    Object? data = null,
  }) {
    return _then(_$HomeBlocDataImpl(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Iterable<PokemonEntity>,
    ));
  }
}

/// @nodoc

class _$HomeBlocDataImpl with DiagnosticableTreeMixin implements _HomeBlocData {
  const _$HomeBlocDataImpl(
      {this.offset = 0,
      this.isLastPage = false,
      this.loading = false,
      this.data = const []});

  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final bool isLastPage;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final Iterable<PokemonEntity> data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocData(offset: $offset, isLastPage: $isLastPage, loading: $loading, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeBlocData'))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('isLastPage', isLastPage))
      ..add(DiagnosticsProperty('loading', loading))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocDataImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, isLastPage, loading,
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      __$$HomeBlocDataImplCopyWithImpl<_$HomeBlocDataImpl>(this, _$identity);
}

abstract class _HomeBlocData implements HomeBlocData {
  const factory _HomeBlocData(
      {final int offset,
      final bool isLastPage,
      final bool loading,
      final Iterable<PokemonEntity> data}) = _$HomeBlocDataImpl;

  @override
  int get offset;
  @override
  bool get isLastPage;
  @override
  bool get loading;
  @override
  Iterable<PokemonEntity> get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeBlocDataImplCopyWith<_$HomeBlocDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
