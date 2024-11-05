import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:flutter_application_new/modules/mafia/cubit/mafia_cubit.dart';
import 'package:flutter_application_new/modules/mafia/models/mafia_role_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MafiaView extends StatelessWidget {
  const MafiaView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MafiaCubit(),
      child: Scaffold(
        body: SafeArea(
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
              child: Padding(
                padding: const EdgeInsets.all(AppDistances.pageBdyMargin),
                child: Builder(
                    builder: (context) {
                      return BlocBuilder<MafiaCubit, MafiaState>(
                        builder: (context, state) {
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "افراد به صورت نوبتی با کلیک بروی دکمه پایین نقششون رو  به شکل رندوم مشخص می کنند",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 16.sp,
                                      fontWeight: FontWeight.bold,
                                      color: UiColors.whiteColor),
                                ),
                                SvgPicture.asset(Assets.images.svg.mafiaSade),

                                SizedBox(
                                  height: AppDistances.small4.w,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MainButton(
                                      btnText: "نقش من رو بگو!",
                                      onPress: () {},
                                      fontsize: 15.sp,
                                    ),
                                    SizedBox(
                                      width: AppDistances.small4.w,
                                    ),
                                    MainButton2(
                                      btnText: "نقش  رو بپوشون!",
                                      onPress: () {},
                                      fontsize: 15.sp,
                                    ),
                                  ],
                                )
                              ],
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




