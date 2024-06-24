part of 'global_bloc.dart';

@immutable
abstract class GlobalState {}

class GlobalInitial extends GlobalState {
  final ConfigurationEntity entity;

  GlobalInitial({
    required this.entity,
  });
}
