import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom-navigation.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:flutter_application_new/modules/cheshmak-marg/cubit/cheshmakmarg_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheshmakMargScreen extends StatefulWidget {
  const CheshmakMargScreen({super.key});

  @override
  State<CheshmakMargScreen> createState() => _CheshmakMargScreenState();
}

class _CheshmakMargScreenState extends State<CheshmakMargScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cubit = context.read<CheshmakmargCubit>();

    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              UiColors.darkBlueColor3,
              UiColors.darkBlueColor5,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height / 12),
            child: AppBarWidget(),
          ),
          bottomNavigationBar: BottomNavigation(
            onPageChange: (int pageIndex) {},
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height / 50),
                  SizedBox(
                    width: size.width / 1.25,
                    child: const Text(
                      textAlign: TextAlign.center,
                      StringConst.gameStartInfo,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  BlocBuilder<CheshmakmargCubit, RoleModel?>(
                    builder: (context, roleModel) {
                      return Image.asset(
                        height: size.height / 2.25,
                        roleModel?.assetPath ??
                            "assets/images/png/cheshmaknotselect.png",
                      ).animate(effects: [const ScaleEffect()]);
                    },
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: size.width / 1.25,
                        child: const Text(
                          textAlign: TextAlign.center,
                          StringConst.yourRole,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 1.25,
                        child: BlocBuilder<CheshmakmargCubit, RoleModel?>(
                          builder: (context, roleModel) {
                            return Text(
                              textAlign: TextAlign.center,
                              roleModel?.role ?? StringConst.notSelectRole,
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontFamily: FontFamily.pelak,
                                  color: UiColors.whiteColor,
                                  fontWeight: FontWeight.bold),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height / 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MainButton(
                        btnText: StringConst.yourRoleBtn,
                        onPress: () async {
                          cubit.generateNaghshRandom(context);
                          await _audioPlayer
                              .play(AssetSource('sounds/greenbtn.mp3'));
                        },
                        fontsize: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      MainButton2(
                        btnText: StringConst.hideYourRoleBtn,
                        onPress: () async {
                          cubit.hideCurrentRole();
                          await _audioPlayer
                              .play(AssetSource('sounds/orangebtn.mp3'));
                        },
                        fontsize: 15,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
