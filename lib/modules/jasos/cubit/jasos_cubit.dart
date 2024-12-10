import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/modules/jasos/models/jasos_role_model.dart';
import 'package:meta/meta.dart';

part 'jasos_state.dart';

class JasosCubit extends Cubit<JasosState> {
  JasosCubit() : super(JasosInitial());

  final List<JasosRoleModel> jasos6PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos7PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos8PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos9PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos10PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos11PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos12PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos13PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos14PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos15PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];
  final List<JasosRoleModel> jasos16PlayerRoleList = [
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjasoossade.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.jasoos),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosshahrvand.path,
        roleName: StringConst.shahrvand),
    JasosRoleModel(
        imagePath: Assets.images.png.jasooskalantar.path,
        roleName: StringConst.kalantar),
    JasosRoleModel(
        imagePath: Assets.images.png.jasoosjoker.path,
        playerMode: JasosPlayerMode.jasos,
        roleName: StringConst.joker),
  ];

  List<JasosRoleModel> roleList = [];
  final List<String> words = [
    "ماشین","باشگاه","افریقا","گل","پارکینگ","هواپیما","کافه","سوپرمارکت","مدرسه",
    "معتاد","دادگاه"
  ];
  String? word;

  void changeRole() {
    // اگر همه نقش‌ها نمایش داده شده باشند
    if (roleList.isEmpty) {
      emit(JasosDisplayedAllRoleState());
      return; // از تابع خارج می‌شود تا از انتخاب نقش جدید جلوگیری شود
    }

    // انتخاب یک نقش تصادفی
    final randomIndex = Random().nextInt(roleList.length);
    final randomRole = roleList[randomIndex];



    // حذف نقش انتخاب‌شده از لیست اصلی
    roleList.removeAt(randomIndex);

    // نمایش نقش انتخاب‌شده
    emit(JasosChangeRoleState(role: randomRole, word: word ?? ""));
  }

  void hideRole() => emit(JasosHideRoleState());

  void getRoleListAndWord(int playerCount) {
    // تولید کلمه تصادفی
    final wordIndex = Random().nextInt(words.length);
    word = words[wordIndex];

    switch (playerCount) {
      case 6:
        roleList = jasos6PlayerRoleList;
      case 7:
        roleList = jasos7PlayerRoleList;
      case 8:
        roleList = jasos8PlayerRoleList;
      case 9:
        roleList = jasos9PlayerRoleList;
      case 10:
        roleList = jasos10PlayerRoleList;
      case 11:
        roleList = jasos11PlayerRoleList;
      case 12:
        roleList = jasos12PlayerRoleList;
      case 13:
        roleList = jasos13PlayerRoleList;
      case 14:
        roleList = jasos14PlayerRoleList;
      case 15:
        roleList = jasos15PlayerRoleList;
      case 16:
        roleList = jasos16PlayerRoleList;
    }
  }
}
