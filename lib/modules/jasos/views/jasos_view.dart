import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom-navigation.dart';
import 'package:flutter_application_new/global/widgets/dialog_body_widget.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:flutter_application_new/modules/jasos/cubit/jasos_cubit.dart';
import 'package:flutter_application_new/modules/jasos/widgets/jasos_show_role_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JasosView extends StatelessWidget {
  JasosView({super.key, required this.playerCount});
  final int playerCount;
  final AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    final AudioPlayer audioPlayer = AudioPlayer();
    return Container(
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
          onPageChange: (int pageIndex) {},
        ),
        body: BlocProvider<JasosCubit>(
          create: (context) => JasosCubit()..getRoleList(playerCount),
          child: Center(
            child: SingleChildScrollView(
              child: BlocBuilder<JasosCubit, JasosState>(
                builder: (context, state) {
                  final jasosCubit = BlocProvider.of<JasosCubit>(context);
                  return Padding(
                    padding: const EdgeInsets.all(AppDistances.pageBdyMargin),
                    child: Column(
                      children: [
                        Text(
                          StringConst.gameStartInfo,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: UiColors.whiteColor),
                        ),
                        if (state is JasosInitial)
                          Image.asset(Assets.images.png.jasoos.path)
                              .animate(effects: [const ScaleEffect()]),

                        // نمایش نقش
                        if (state is JasosChangeRoleState)
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: AppDistances.small8.w),
                            child: JasosShowRoleWidget(role: state.role),
                          ),

                        if (state is JasosHideRoleState) ...[
                          Image.asset(Assets.images.png.jasoos.path)
                              .animate(effects: [const ScaleEffect()]),
                          SizedBox(height: AppDistances.medium12.w),
                          Text(
                            StringConst.yourRoleBtn,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor),
                          ),
                          SizedBox(height: AppDistances.small8.w),
                        ],

                        if (state is JasosDisplayedAllRoleState) ...[
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
                                        await audioPlayer.play(
                                            AssetSource('sounds/greenbtn.mp3'));
                                        Navigator.pop(context);
                                      }),
                                  SizedBox(width: AppDistances.small2.w),
                                ],
                              ),
                              SizedBox(height: AppDistances.small2.w),
                            ],
                          )
                        ],
                        // دکمه های نمایش و مخفی کردن نقش
                        if (state is! JasosDisplayedAllRoleState)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MainButton(
                                btnText: StringConst.yourRoleBtn,
                                onPress: () async {
                                  jasosCubit.changeRole();
                                  await audioPlayer
                                      .play(AssetSource('sounds/greenbtn.mp3'));
                                },
                                fontsize: 15.sp,
                              ),
                              SizedBox(
                                width: AppDistances.small4.w,
                              ),
                              if (state is! JasosInitial)
                                MainButton2(
                                  btnText: StringConst.hideYourRoleBtn,
                                  onPress: () async {
                                    jasosCubit.hideRole();
                                    await audioPlayer.play(
                                        AssetSource('sounds/orangebtn.mp3'));
                                  },
                                  fontsize: 15.sp,
                                ),
                            ],
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
