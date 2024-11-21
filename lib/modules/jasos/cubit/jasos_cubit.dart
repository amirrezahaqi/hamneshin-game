import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/modules/jasos/models/jasos_role_model.dart';
import 'package:meta/meta.dart';

part 'jasos_state.dart';

class JasosCubit extends Cubit<JasosState> {
  JasosCubit() : super(JasosInitial());

  final List<JasosRoleModel> jasos6PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos7PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos8PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos9PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos10PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos11PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos12PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos13PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos14PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos15PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  final List<JasosRoleModel> jasos16PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path, roleName: "جاسوس"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path, roleName: "شهروند"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path, roleName: "کلانتر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path, roleName: "جوکر"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoosvijeh.path,
        roleName: "جاسوس ویژه"),
  ];
  List<JasosRoleModel> roleList = [];

  void changeRole() {
    // اگر همه نقش‌ها نمایش داده شده باشند
    if (jasos6PlayerRoleList.isEmpty) {
      emit(JasosDisplayedAllRoleState());
      return; // از تابع خارج می‌شود تا از انتخاب نقش جدید جلوگیری شود
    }

    // انتخاب یک نقش تصادفی
    final randomIndex = Random().nextInt(jasos6PlayerRoleList.length);
    final randomRole = jasos6PlayerRoleList[randomIndex];

    // حذف نقش انتخاب‌شده از لیست اصلی
    jasos6PlayerRoleList.removeAt(randomIndex);

    // نمایش نقش انتخاب‌شده
    emit(JasosChangeRoleState(role: randomRole));
  }

  void hideRole() => emit(JasosHideRoleState());

  void getRoleList(int playerCount) {
    switch(playerCount) {
      case 6 :
        roleList = jasos6PlayerRoleList;
      case 7 :
        roleList = jasos7PlayerRoleList;
      case 8 :
        roleList = jasos8PlayerRoleList;
      case 9 :
        roleList = jasos9PlayerRoleList;
      case 10 :
        roleList = jasos10PlayerRoleList;
      case 11 :
        roleList = jasos11PlayerRoleList;
      case 12 :
        roleList = jasos12PlayerRoleList;
      case 13 :
        roleList = jasos13PlayerRoleList;
      case 14 :
        roleList = jasos14PlayerRoleList;
      case 15 :
        roleList = jasos15PlayerRoleList;
      case 16 :
        roleList = jasos16PlayerRoleList;
    }
  }
}
