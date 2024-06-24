part of 'splash_bloc.dart';

@immutable
abstract class SplashState {
  const SplashState();
}

class SplashInitial extends SplashState {}


class ShowVersionState extends SplashState {
  final String version;

  const ShowVersionState({
    required this.version,
  });
}