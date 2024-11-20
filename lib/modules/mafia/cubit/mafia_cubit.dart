import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/modules/mafia/models/mafia_role_model.dart';
import "package:meta/meta.dart";

part 'mafia_state.dart';

class MafiaCubit extends Cubit<MafiaState> {
  MafiaCubit({required this.playerCount}) : super(MafiaInitial());
  final int playerCount;

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



  void changeRole() {
    // اگر همه نقش‌ها نمایش داده شده باشند
    if (mafia7PayerRoleList.isEmpty) {
      emit(MafiaDisplayedAllRoleState());
      return; // از تابع خارج می‌شود تا از انتخاب نقش جدید جلوگیری شود
    }

    // انتخاب یک نقش تصادفی
    final randomIndex = Random().nextInt(mafia7PayerRoleList.length);
    final randomRole = mafia7PayerRoleList[randomIndex];

    // حذف نقش انتخاب‌شده از لیست اصلی
    mafia7PayerRoleList.removeAt(randomIndex);

    // نمایش نقش انتخاب‌شده
    emit(MafiaChangeRoleState(role: randomRole));
  }

  void hideMafiaRole() => emit(MafiaHideRoleState());
}
