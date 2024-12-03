import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/cubits/navigation_cubit.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom-navigation.dart';
import 'package:flutter_application_new/global/widgets/bottom_sheet_body_widget.dart';
import 'package:flutter_application_new/global/widgets/dialog_body_widget.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:flutter_application_new/global/widgets/main_wrapper.dart';
import 'package:flutter_application_new/modules/mafia/cubit/mafia_cubit.dart';
import 'package:flutter_application_new/modules/mafia/widgets/mafia_show_role_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MafiaView extends StatelessWidget {
  MafiaView({super.key, required this.playerCount});
  final int playerCount;
  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final navCubit = context.watch<NavigationCubit>();
    return BlocProvider(
      create: (context) => MafiaCubit()..getRoleList(playerCount),
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
              preferredSize: Size.fromHeight(20.w),
              child: Padding(
                padding: EdgeInsets.only(top: 8.w),
                child: const AppBarWidget(),
              )),
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
                                await audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const MainWrapper(),
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await audioPlayer
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
                                await audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                navCubit.changePage(1);
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const MainWrapper(),
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await audioPlayer
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
                                await audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                navCubit.changePage(2);
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const MainWrapper(),
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await audioPlayer
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
          body: Padding(
            padding: const EdgeInsets.all(AppDistances.pageBdyMargin),
            child: Builder(builder: (context) {
              return BlocBuilder<MafiaCubit, MafiaState>(
                builder: (context, state) {
                  final mafiaCubit = BlocProvider.of<MafiaCubit>(context);
                  return Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          // حالت پیش فرض قبل از شروع نمایش نقش ها
                          if (state is! MafiaDisplayedAllRoleState)
                            Text(
                              StringConst.gameStartInfo,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: UiColors.whiteColor),
                            ),
                          // نمایش وضعیت پایانی(انتخاب شدن تمام نقش ها)
                          if (state is MafiaDisplayedAllRoleState) ...[
                            DialogBodyWidget(
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
                                      fontSize: 10,
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
                                          await audioPlayer.play(AssetSource(
                                              'sounds/greenbtn.mp3'));
                                          Navigator.pop(context);
                                        }),
                                    SizedBox(width: AppDistances.small2.w),
                                  ],
                                ),
                                SizedBox(height: AppDistances.small2.w),
                              ],
                            )
                          ],

                          // نمایش و مخفی کردن نقش ها
                          if (state is MafiaInitial) ...[
                            Image.asset(Assets.images.png.mafia.path)
                                .animate(effects: [const ScaleEffect()])
                          ] else if (state is MafiaChangeRoleState) ...[
                            MafiaShowRoleWidget(role: state.role)
                          ] else if (state is MafiaHideRoleState) ...[
                            SizedBox(height: AppDistances.medium12.w),
                            Image.asset(Assets.images.png.mafia.path)
                                .animate(effects: [const ScaleEffect()]),
                            Text(
                              StringConst.forYourRole,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                  color: UiColors.whiteColor),
                            ),
                          ],

                          SizedBox(
                            height: AppDistances.small4.w,
                          ),
                          // دکمه های نمایش و مخفی کردن نقش
                          if (state is! MafiaDisplayedAllRoleState)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MainButton(
                                  btnText: StringConst.yourRoleBtn,
                                  onPress: () async {
                                    mafiaCubit.changeRole();
                                    await audioPlayer.play(
                                        AssetSource('sounds/greenbtn.mp3'));
                                  },
                                  fontsize: 15.sp,
                                ),
                                SizedBox(
                                  width: AppDistances.small4.w,
                                ),
                                if (state is! MafiaInitial)
                                  MainButton2(
                                    btnText: StringConst.hideYourRoleBtn,
                                    onPress: () async {
                                      mafiaCubit.hideMafiaRole();
                                      await audioPlayer.play(
                                          AssetSource('sounds/orangebtn.mp3'));
                                    },
                                    fontsize: 15.sp,
                                  ),
                              ],
                            ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
