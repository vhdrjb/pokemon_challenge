import 'package:flutter/foundation.dart';
import 'package:pokemon_flutter/domain/base/usecase_result.dart';

import '../usecase_request.dart';
import 'usecase.dart';

abstract class ConsumerUseCase<Q extends UsecaseRequest> implements UseCase {
  @protected
  Future task(Q request);

  const ConsumerUseCase();

  Future perform(Q request, UseCaseResult result) async {
    try {
      await task(request);
      result.onFinished?.call();
    } on Exception catch (exception) {
      result.onError?.call(exception);
    } catch (e) {
      result.onError?.call(Exception(e.toString()));
    }
  }
}
