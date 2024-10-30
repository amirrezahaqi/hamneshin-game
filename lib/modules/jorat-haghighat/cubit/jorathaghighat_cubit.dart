import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'jorathaghighat_state.dart';

class JorathaghighatCubit extends Cubit<double> {
  JorathaghighatCubit() : super(0);

  void generateRandomDeg() {
    final randomDeg = Random().nextDouble();
    emit(randomDeg);
  }
}
