import 'package:pokemon_flutter/domain/base/usecase_request.dart';

abstract class PageableRequest implements UsecaseRequest {
  final int page;

  const PageableRequest({
    required this.page,
  });
}
