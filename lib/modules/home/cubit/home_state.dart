part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}


final class HomeChangeMafiaPlayerCount extends HomeState {
  HomeChangeMafiaPlayerCount({required this.playerCount});
  final int playerCount;
}

final class HomeChangeJasosPlayerCount extends HomeState {
  HomeChangeJasosPlayerCount({required this.playerCount});
  final int playerCount;
}