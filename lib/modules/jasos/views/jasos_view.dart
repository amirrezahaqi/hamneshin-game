import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/main_btn2.dart';
import 'package:flutter_application_new/modules/jasos/cubit/jasos_cubit.dart';
import 'package:flutter_application_new/modules/jasos/widgets/jasos_show_role_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JasosView extends StatelessWidget {
  const JasosView({super.key});

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
          create: (context) => JasosCubit(),
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
                          "افراد به صورت نوبتی با کلیک بروی دکمه پایین نقششون رو  به شکل رندوم مشخص می کنند",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: UiColors.whiteColor),
                        ),
                        if(state is JasosInitial)
                        SvgPicture.asset(Assets.images.svg.jasoosJasoos),

                        // نمایش نقش
                        if(state is JasosChangeRoleState)
                          Padding(
                            padding: EdgeInsets.only(bottom: AppDistances.medium12.w),
                            child: JasosShowRoleWidget(role: state.role),
                          ),

                        if(state is JasosHideRoleState)...[
                          SizedBox(height: AppDistances.medium12.w),
                          Text(
                            "برای دیدن نقشت ضربه بزن!",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor),
                          ),
                          SizedBox(height: AppDistances.medium12.w),
                        ],

                        if(state is JasosDisplayedAllRoleState)...[
                          Image.asset(Assets.images.png.jasoos.path),
                          SizedBox(height: AppDistances.small4.w),
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
                            onPress: () { },
                            fontsize: 15.sp,
                          ),
                        ],
                        // دکمه های نمایش و مخفی کردن نقش
                        if(state is! JasosDisplayedAllRoleState)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MainButton(
                              btnText: "نقش من رو بگو!",
                              onPress: () => jasosCubit.changeRole(),
                              fontsize: 15.sp,
                            ),
                            SizedBox(
                              width: AppDistances.small4.w,
                            ),
                            MainButton2(
                              btnText: "نقش  رو بپوشون!",
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
