import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:meta/meta.dart';

part 'shah_dozd_state.dart';

class ShahDozdCubit extends Cubit<RoleModel?> {
  ShahDozdCubit() : super(null);

  final List<String> naghs = [
    StringConst.shah,
    StringConst.dozd,
    StringConst.vazir,
    StringConst.jallad
  ];
  final List<String> naghsAssets = [
    "assets/images/png/sdjvshah.png",
    "assets/images/png/sdjvdozd.png",
    "assets/images/png/sdjvvazir.png",
    "assets/images/png/sdjvjalad.png",
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
      print(StringConst.endRole);
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
