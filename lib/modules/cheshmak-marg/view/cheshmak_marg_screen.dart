import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/cubits/navigation_cubit.dart';
import 'package:hamneshin.games.apps/global/utils/constants/StringConst.dart';
import 'package:hamneshin.games.apps/global/utils/constants/ui_colors.dart';
import 'package:hamneshin.games.apps/global/widgets/app-bar.dart';
import 'package:hamneshin.games.apps/global/widgets/bottom-navigation.dart';
import 'package:hamneshin.games.apps/global/widgets/bottom_sheet_body_widget.dart';
import 'package:hamneshin.games.apps/global/widgets/main_btn.dart';
import 'package:hamneshin.games.apps/global/widgets/main_btn2.dart';
import 'package:hamneshin.games.apps/global/widgets/main_wrapper.dart';
import 'package:hamneshin.games.apps/modules/cheshmak-marg/cubit/cheshmakmarg_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
    final navCubit = context.watch<NavigationCubit>();
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
            child: const AppBarWidget(),
          ),
          bottomNavigationBar: BottomNavigation(
            onPageChange: (int pageIndex) {
              if (pageIndex == 0) {
                buildShowCustomModalBottomSheet(
                  builder: (context) {
                    return BottomSheetBodyWidget(
                      children: [
                        Text("آیا قصد خروج از بازی را دارید؟",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor)),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MainButton2(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) {
                                    final cubit =
                                        context.read<CheshmakmargCubit>();
                                    cubit.resetCheshmakCubit();
                                    return const MainWrapper();
                                  },
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/greenbtn.mp3'));
                                Navigator.pop(context);
                              },
                              btnText: "ادامه بازی",
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  context: context,
                );
              } else if (pageIndex == 1) {
                buildShowCustomModalBottomSheet(
                  builder: (context) {
                    return BottomSheetBodyWidget(
                      children: [
                        Text("آیا قصد خروج از بازی را دارید؟",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor)),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MainButton2(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                navCubit.changePage(1);
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) {
                                    final cubit =
                                        context.read<CheshmakmargCubit>();
                                    cubit.resetCheshmakCubit();
                                    return const MainWrapper();
                                  },
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/greenbtn.mp3'));
                                Navigator.pop(context);
                              },
                              btnText: "ادامه بازی",
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  context: context,
                );
              } else if (pageIndex == 2) {
                buildShowCustomModalBottomSheet(
                  builder: (context) {
                    return BottomSheetBodyWidget(
                      children: [
                        Text("آیا قصد خروج از بازی را دارید؟",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor)),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MainButton2(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                navCubit.changePage(2);
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) {
                                    final cubit =
                                        context.read<CheshmakmargCubit>();
                                    cubit.resetCheshmakCubit();
                                    return const MainWrapper();
                                  },
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/greenbtn.mp3'));
                                Navigator.pop(context);
                              },
                              btnText: "ادامه بازی",
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  context: context,
                );
              }
            },
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
