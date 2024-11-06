part of 'mafia_cubit.dart';

@immutable
sealed class MafiaState {}

final class MafiaInitial extends MafiaState {}

final class MafiaChangeRoleState extends MafiaState {
  MafiaChangeRoleState({required this.role});
  final MafiaRoleModel role;
}

final class MafiaHideRoleState extends MafiaState {}

final class MafiaDisplayedAllRoleState extends MafiaState {}

