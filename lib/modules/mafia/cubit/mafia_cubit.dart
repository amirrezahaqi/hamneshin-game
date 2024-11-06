import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/modules/mafia/models/mafia_role_model.dart';
import "package:meta/meta.dart";

part 'mafia_state.dart';

class MafiaCubit extends Cubit<MafiaState> {
  MafiaCubit() : super(MafiaInitial());

  final List<MafiaRoleModel> mafia6PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.svg.mafiaSade, roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.svg.shahrvandSade, roleName: "شهروند ساده"),
    MafiaRoleModel(imagePath: Assets.images.svg.doctor, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.svg.karagahMafia, roleName: "کارآگاه"),
    MafiaRoleModel(imagePath: Assets.images.svg.sniper, roleName: "اسنایپر"),
    MafiaRoleModel(imagePath: Assets.images.svg.jansakht, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.svg.ravanshenas, roleName: "روانشناس"),
  ];


  void changeRole() {
    // اگر همه نقش‌ها نمایش داده شده باشند
    if ( mafia6PayerRoleList.isEmpty) {
      emit(MafiaDisplayedAllRoleState());
      return; // از تابع خارج می‌شود تا از انتخاب نقش جدید جلوگیری شود
    }

    // انتخاب یک نقش تصادفی
    final randomIndex = Random().nextInt(mafia6PayerRoleList.length);
    final randomRole = mafia6PayerRoleList[randomIndex];

    // حذف نقش انتخاب‌شده از لیست اصلی
    mafia6PayerRoleList.removeAt(randomIndex);

    // نمایش نقش انتخاب‌شده
    emit(MafiaChangeRoleState(role: randomRole));
  }

  void hideMafiaRole() => emit(MafiaHideRoleState());
}
