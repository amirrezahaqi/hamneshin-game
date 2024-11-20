import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:flutter_application_new/modules/mafia/cubit/mafia_cubit.dart';
import 'package:flutter_application_new/modules/mafia/widgets/mafia_show_role_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MafiaView extends StatelessWidget {
  const MafiaView({super.key, required this.playerCount});
  final int playerCount;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MafiaCubit(playerCount: playerCount)..getRoleList(playerCount),
      child: Scaffold(
        body: SafeArea(
            child: Container(
              height: double.infinity,
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
              child: Padding(
                padding: const EdgeInsets.all(AppDistances.pageBdyMargin),
                child: Builder(
                    builder: (context) {
                      return BlocBuilder<MafiaCubit, MafiaState>(
                        builder: (context, state) {
                          final mafiaCubit = BlocProvider.of<MafiaCubit>(context);
                          return Center(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  // حالت پیش فرض قبل از شروع نمایش نقش ها
                                  if(state is! MafiaDisplayedAllRoleState)
                                  Text(
                                    "افراد به صورت نوبتی با کلیک بروی دکمه پایین نقششون رو  به شکل رندوم مشخص می کنند",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: UiColors.whiteColor),
                                  ),
                                  // نمایش وضعیت پایانی(انتخاب شدن تمام نقش ها)
                                  if(state is MafiaDisplayedAllRoleState)...[
                                    Image.asset(Assets.images.png.mafia.path),
                                    Text(
                                      "تمام نقش ها انتخاب شدن، بازی رو شروع کنید :)",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: UiColors.whiteColor),
                                    ),
                                    SizedBox(height: AppDistances.medium12.w),
                                    MainButton(
                                      btnText: "رفتن به صفحه اصلی",
                                      onPress: () { Navigator.pop(context); },
                                      fontsize: 15.sp,
                                    ),
                                  ],

                                  // نمایش و مخفی کردن نقش ها
                                  if(state is MafiaInitial)...[
                                    Image.asset(Assets.images.png.mafia.path)
                                  ] else if(state is MafiaChangeRoleState)...[
                                    MafiaShowRoleWidget(role: state.role)
                                  ] else if(state is MafiaHideRoleState)...[
                                    SizedBox(height: AppDistances.medium12.w),
                                    Image.asset(Assets.images.png.mafia.path),
                                    Text(
                                      "برای دیدن نقشت ضربه بزن!",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: UiColors.whiteColor),
                                    ),
                                  ],

                                  SizedBox(
                                    height: AppDistances.small4.w,
                                  ),
                                  // دکمه های نمایش و مخفی کردن نقش
                                  if(state is! MafiaDisplayedAllRoleState)
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      MainButton(
                                        btnText: "نقش من رو بگو!",
                                        onPress: () => mafiaCubit.changeRole(),
                                        fontsize: 15.sp,
                                      ),
                                      SizedBox(
                                        width: AppDistances.small4.w,
                                      ),
                                      if(state is! MafiaInitial)
                                      MainButton2(
                                        btnText: "نقش  رو بپوشون!",
                                        onPress: () => mafiaCubit.hideMafiaRole(),
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
                    }
                ),
              ),
            )
        ),
      ),
    );
  }
}




