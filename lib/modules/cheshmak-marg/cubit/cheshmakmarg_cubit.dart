import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cheshmakmarg_state.dart';

class CheshmakmargCubit extends Cubit<RoleModel?> {
  CheshmakmargCubit() : super(null);

  final List<String> naghs = ["کارآگاه", "قاتل", "پوچ", "پوچ", "پوچ", "پوچ"];
  final List<String> naghsAssets = [
    "assets/images/png/cheshmakkaragah.png",
    "assets/images/png/cheshmakghatel.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
  ];

  generateNaghshRandom() {
    if (naghs.isNotEmpty && naghsAssets.isNotEmpty) {
      final randomIndex = Random().nextInt(naghs.length);
      final roleModel = RoleModel(
        role: naghs[randomIndex],
        assetPath: naghsAssets[randomIndex],
      );

      // حذف آیتم‌ها از لیست‌ها
      naghs.removeAt(randomIndex);
      naghsAssets.removeAt(randomIndex);

      emit(roleModel);

      print(roleModel.assetPath);
      print(roleModel.role);
    } else {
      print("تمام نقش‌ها انتخاب شده‌اند!");
    }
  }

  hideCurrentRole() {
    emit(null); // ارسال مقدار null برای مخفی کردن نقش
  }
}

class RoleModel {
  final String role;
  final String assetPath;

  RoleModel({required this.role, required this.assetPath});
}
