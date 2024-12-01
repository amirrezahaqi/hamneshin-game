import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/dialog_body_widget.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
  final AudioPlayer _audioPlayer = AudioPlayer();
  generateNaghshRandom(BuildContext context) async {
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
      await _audioPlayer.play(AssetSource('sounds/dialog.mp3'));
      showDialog(
          context: context,
          builder: (context) => DialogBodyWidget(
                dialogBody: [
                  const Text(
                    textAlign: TextAlign.center,
                    StringConst.endend,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: AppDistances.medium16.w * 2,
                    child: const Divider(
                      color: UiColors.whiteColor,
                      thickness: 2,
                    ),
                  ),
                  SizedBox(height: AppDistances.small2.w),
                  const Text(
                    textAlign: TextAlign.center,
                    StringConst.endRole,
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    Assets.images.png.selected.path,
                    scale: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(
                          btnText: StringConst.backToHome,
                          onPress: () async {
                            Navigator.pop(context);
                            await _audioPlayer
                                .play(AssetSource('sounds/greenbtn.mp3'));
                          }),
                      SizedBox(width: AppDistances.small2.w),
                    ],
                  ),
                  SizedBox(height: AppDistances.small2.w),
                ],
              ));
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
