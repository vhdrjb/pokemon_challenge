// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_pageable_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPageableRequest {
  int get page => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetPageableRequestCopyWith<GetPageableRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPageableRequestCopyWith<$Res> {
  factory $GetPageableRequestCopyWith(
          GetPageableRequest value, $Res Function(GetPageableRequest) then) =
      _$GetPageableRequestCopyWithImpl<$Res, GetPageableRequest>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class _$GetPageableRequestCopyWithImpl<$Res, $Val extends GetPageableRequest>
    implements $GetPageableRequestCopyWith<$Res> {
  _$GetPageableRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetPageableRequestCopyWith<$Res>
    implements $GetPageableRequestCopyWith<$Res> {
  factory _$$_GetPageableRequestCopyWith(_$_GetPageableRequest value,
          $Res Function(_$_GetPageableRequest) then) =
      __$$_GetPageableRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$_GetPageableRequestCopyWithImpl<$Res>
    extends _$GetPageableRequestCopyWithImpl<$Res, _$_GetPageableRequest>
    implements _$$_GetPageableRequestCopyWith<$Res> {
  __$$_GetPageableRequestCopyWithImpl(
      _$_GetPageableRequest _value, $Res Function(_$_GetPageableRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$_GetPageableRequest(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetPageableRequest extends _GetPageableRequest {
  const _$_GetPageableRequest({this.page = -1}) : super._();

  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'GetPageableRequest(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetPageableRequest &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetPageableRequestCopyWith<_$_GetPageableRequest> get copyWith =>
      __$$_GetPageableRequestCopyWithImpl<_$_GetPageableRequest>(
          this, _$identity);
}

abstract class _GetPageableRequest extends GetPageableRequest {
  const factory _GetPageableRequest({final int page}) = _$_GetPageableRequest;
  const _GetPageableRequest._() : super._();

  @override
  int get page;
  @override
  @JsonKey(ignore: true)
  _$$_GetPageableRequestCopyWith<_$_GetPageableRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
