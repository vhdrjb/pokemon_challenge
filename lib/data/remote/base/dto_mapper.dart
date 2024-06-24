import '../../base/dto.dart';

abstract class RemoteMapper<D> {
  const RemoteMapper();
  D mapToData(Map<String, dynamic> result);
}

abstract class DtoMapper<D extends Dto> extends RemoteMapper<D> {
  const DtoMapper();
  D map(Map<String, dynamic> result);

  @override
  D mapToData(Map<String, dynamic> result) {
    return map(result);
  }
}

abstract class ListDtoMapper<D extends Dto> extends RemoteMapper<List<D>> {
  const ListDtoMapper();
  @override
  List<D> mapToData(Map<String, dynamic> result) {
    List<dynamic> dataList = result['result'];
    return dataList.map((e) => map(e)).toList(growable: false);
  }

  D map(Map<String, dynamic> result);
}
