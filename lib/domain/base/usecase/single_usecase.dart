import 'package:pokemon_flutter/domain/base/usecase_result.dart';

import '../usecase_request.dart';
import 'usecase.dart';

abstract class SingleUseCase<Q extends UsecaseRequest, E> implements UseCase {
  const SingleUseCase();

  Future<E> task(Q request);

  Future perform(Q request, UseCaseResult<E> result) async {
    try {
      E data = await task(request);
      result.onSuccess?.call(data);
    } on Exception catch (exception) {
      result.onError?.call(exception);
    } catch (e) {
      result.onError?.call(Exception(e.toString()));
    }
  }
}
