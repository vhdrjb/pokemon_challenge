part of 'splash_bloc.dart';

@immutable
abstract class SplashEvent {}

class GetVersionEvent extends SplashEvent {}

class NavigateToHomeEvent extends SplashEvent {}