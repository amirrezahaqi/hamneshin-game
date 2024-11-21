import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());


  void changeMafiaPlayerCount({required int playerCount}) {
    emit(HomeChangeMafiaPlayerCount(playerCount: playerCount));
  }

  void changeJasosPlayerCount({required int playerCount}) {
    emit(HomeChangeJasosPlayerCount(playerCount: playerCount));
  }
}
