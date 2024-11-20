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
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
  ];
  final List<MafiaRoleModel> mafia7PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia8PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia9PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia10PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia11PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia12PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia13PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia14PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia15PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];
  final List<MafiaRoleModel> mafia16PayerRoleList = [
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiamafiasade.path,
        roleName: "مافیا ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiashahrvand.path,
        roleName: "شهروند ساده"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiadoctor.path, roleName: "دکتر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiakaragah.path, roleName: "کارآگاه"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiasniper.path, roleName: "اسنایپر"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiajansakht.path, roleName: "جان سخت"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
    MafiaRoleModel(
        imagePath: Assets.images.png.mafiaravanshenas.path,
        roleName: "روانشناس"),
  ];

  List<MafiaRoleModel> roleList = [];


  void changeRole() {
    // اگر همه نقش‌ها نمایش داده شده باشند
    if (roleList.isEmpty) {
      emit(MafiaDisplayedAllRoleState());
      return; // از تابع خارج می‌شود تا از انتخاب نقش جدید جلوگیری شود
    }
    // انتخاب یک نقش تصادفی
    final randomIndex = Random().nextInt(roleList.length);
    final randomRole = roleList[randomIndex];

    // حذف نقش انتخاب‌شده از لیست اصلی
    roleList.removeAt(randomIndex);

    // نمایش نقش انتخاب‌شده
    emit(MafiaChangeRoleState(role: randomRole));
  }

  void hideMafiaRole() => emit(MafiaHideRoleState());

  void getRoleList(int playerCount) {
    switch(playerCount) {
      case 6 :
        roleList = mafia6PayerRoleList;
      case 7 :
        roleList = mafia7PayerRoleList;
      case 8 :
        roleList = mafia8PayerRoleList;
      case 9 :
        roleList = mafia9PayerRoleList;
      case 10 :
        roleList = mafia10PayerRoleList;
      case 11 :
        roleList = mafia11PayerRoleList;
      case 12 :
        roleList = mafia12PayerRoleList;
      case 13 :
        roleList = mafia13PayerRoleList;
      case 14 :
        roleList = mafia14PayerRoleList;
      case 15 :
        roleList = mafia15PayerRoleList;
      case 16 :
        roleList = mafia16PayerRoleList;
    }
  }
}
