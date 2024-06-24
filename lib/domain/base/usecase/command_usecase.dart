import '../usecase_result.dart';
import 'usecase.dart';

abstract class CommandUseCase implements UseCase {
  const CommandUseCase();

  Future task();

  Future perform(UseCaseResult result) async {
    try {
      await task();
      result.onFinished?.call();
    } on Exception catch (exception) {
      result.onError?.call(exception);
    } catch (e) {
      result.onError?.call(Exception(e.toString()));
    }
  }
}
