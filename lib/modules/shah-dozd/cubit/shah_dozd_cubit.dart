import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shah_dozd_state.dart';

class ShahDozdCubit extends Cubit<RoleModel?> {
  ShahDozdCubit() : super(null);

  final List<String> naghs = ["شاه", "دزد", "وزیر", "جلاد"];
  final List<String> naghsAssets = [
    "assets/images/svg/shah.svg",
    "assets/images/svg/dozd.svg",
    "assets/images/svg/vazir.svg",
    "assets/images/svg/jallad.svg",
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
