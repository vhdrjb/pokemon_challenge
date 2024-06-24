import 'package:pokemon_flutter/domain/base/usecase_request.dart';

class PageableRequest implements UsecaseRequest {
  final int pageSize;
  final int page;

  const PageableRequest({required this.page, this.pageSize = 50});
}
