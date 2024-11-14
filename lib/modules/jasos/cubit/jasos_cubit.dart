import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/modules/jasos/models/jasos_role_model.dart';
import 'package:meta/meta.dart';

part 'jasos_state.dart';

class JasosCubit extends Cubit<JasosState> {
  JasosCubit() : super(JasosInitial());


  final List<JasosRoleModel> jasosRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.svg.jasoosJasoos, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.svg.shahrvandJasoos, roleName: "شهروند"),
    JasosRoleModel(imagePath: Assets.images.svg.kalantarJasoos, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.svg.jokerJasoos, roleName: "جوکر"),
    JasosRoleModel(imagePath: Assets.images.svg.jasoosvijehJasoos, roleName: "جاسوس ویژه"),
  ];


  void changeRole() {
    // اگر همه نقش‌ها نمایش داده شده باشند
    if ( jasosRoleList.isEmpty) {
      emit(MafiaDisplayedAllRoleState());
      return; // از تابع خارج می‌شود تا از انتخاب نقش جدید جلوگیری شود
    }

    // انتخاب یک نقش تصادفی
    final randomIndex = Random().nextInt(jasosRoleList.length);
    final randomRole = jasosRoleList[randomIndex];

    // حذف نقش انتخاب‌شده از لیست اصلی
    jasosRoleList.removeAt(randomIndex);

    // نمایش نقش انتخاب‌شده
    emit(JasosChangeRoleState(role: randomRole));
  }

  void hideRole() => emit(MafiaHideRoleState());
}
