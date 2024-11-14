part of 'jasos_cubit.dart';

@immutable
sealed class JasosState {}

final class JasosInitial extends JasosState {}

final class JasosChangeRoleState extends JasosState {
  JasosChangeRoleState({required this.role});
  final JasosRoleModel role;
}

final class JasosHideRoleState extends JasosState {}

final class JasosDisplayedAllRoleState extends JasosState {}