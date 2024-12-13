import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamneshin.games.apps/gen/assets.gen.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/utils/constants/StringConst.dart';
import 'package:hamneshin.games.apps/global/utils/constants/app_distances.dart';
import 'package:hamneshin.games.apps/global/utils/constants/ui_colors.dart';
import 'package:hamneshin.games.apps/global/widgets/dialog_body_widget.dart';
import 'package:hamneshin.games.apps/global/widgets/main_btn.dart';
import 'package:hamneshin.games.apps/global/widgets/main_wrapper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

part 'cheshmakmarg_state.dart';

class CheshmakmargCubit extends Cubit<RoleModel?> {
  CheshmakmargCubit() : super(null);
  final AudioPlayer audioPlayer = AudioPlayer();
  final List<String> naghs = [
    StringConst.karagah2,
    StringConst.ghatel,
    StringConst.pooch,
    StringConst.pooch,
    StringConst.pooch,
    StringConst.pooch
  ];
  final List<String> naghsAssets = [
    "assets/images/png/cheshmakkaragah.png",
    "assets/images/png/cheshmakghatel.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
    "assets/images/png/cheshmakpooch.png",
  ];

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
      await audioPlayer.play(AssetSource('sounds/dialog.mp3'));
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
                            await audioPlayer
                                .play(AssetSource('sounds/greenbtn.mp3'));

                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) {
                                final cubit = context.read<CheshmakmargCubit>();
                                cubit.resetCheshmakCubit();
                                return const MainWrapper();
                              },
                            ));
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

  void resetCheshmakCubit() {
    naghs.clear();
    naghsAssets.clear();
    naghs.addAll([
      StringConst.karagah2,
      StringConst.ghatel,
      StringConst.pooch,
      StringConst.pooch,
      StringConst.pooch,
      StringConst.pooch,
    ]);
    naghsAssets.addAll([
      "assets/images/png/cheshmakkaragah.png",
      "assets/images/png/cheshmakghatel.png",
      "assets/images/png/cheshmakpooch.png",
      "assets/images/png/cheshmakpooch.png",
      "assets/images/png/cheshmakpooch.png",
      "assets/images/png/cheshmakpooch.png",
    ]);
    emit(null); // ریست کردن State به مقدار اولیه
  }
}

class RoleModel {
  final String role;
  final String assetPath;

  RoleModel({required this.role, required this.assetPath});
}
