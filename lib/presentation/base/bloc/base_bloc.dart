import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon_flutter/presentation/base/bloc/routing_param.dart';

abstract class BaseBloc<E, S> extends Bloc<E, S> {
  Object? _extra;

  Map<String, dynamic>? _pathParams;
  Map<String, String>? _queryParams;

  BaseBloc(super.initialState);

  RoutingParam get routingParam {
    return RoutingParam(
        pathParam: _pathParams ?? {},
        queryParam: _queryParams ?? {},
        extra: _extra);
  }

  void updateRouting(
      {Map<String, dynamic>? pathParameters,
      Map<String, String>? queryParameters,
      Object? extra}) {
    _extra = extra;
    _pathParams = pathParameters;
    _queryParams = queryParameters;
  }
}
