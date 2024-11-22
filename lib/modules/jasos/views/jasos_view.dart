import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:flutter_application_new/modules/jasos/cubit/jasos_cubit.dart';
import 'package:flutter_application_new/modules/jasos/widgets/jasos_show_role_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JasosView extends StatelessWidget {
  const JasosView({super.key, required this.playerCount});
  final int playerCount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: BlocProvider<JasosCubit>(
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
                          Image.asset(Assets.images.png.jasoos.path),

                        // نمایش نقش
                        if (state is JasosChangeRoleState)
                          Padding(
                            padding:
                                EdgeInsets.only(bottom: AppDistances.small8.w),
                            child: JasosShowRoleWidget(role: state.role),
                          ),

                        if (state is JasosHideRoleState) ...[
                          Image.asset(Assets.images.png.jasoos.path),
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
                          Image.asset(Assets.images.png.jasoos.path),
                          SizedBox(height: AppDistances.small4.w),
                          Text(
                            StringConst.endRole,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor),
                          ),
                          SizedBox(height: AppDistances.medium12.w),
                          MainButton(
                            btnText: StringConst.goToHome,
                            onPress: () {
                              Navigator.pop(context);
                            },
                            fontsize: 15.sp,
                          ),
                        ],
                        // دکمه های نمایش و مخفی کردن نقش
                        if (state is! JasosDisplayedAllRoleState)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MainButton(
                                btnText: StringConst.yourRoleBtn,
                                onPress: () => jasosCubit.changeRole(),
                                fontsize: 15.sp,
                              ),
                              SizedBox(
                                width: AppDistances.small4.w,
                              ),
                              if (state is! JasosInitial)
                                MainButton2(
                                  btnText: StringConst.hideYourRoleBtn,
                                  onPress: () => jasosCubit.hideRole(),
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
