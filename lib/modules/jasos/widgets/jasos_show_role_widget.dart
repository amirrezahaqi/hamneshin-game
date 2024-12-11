import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/modules/jasos/models/jasos_role_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JasosShowRoleWidget extends StatelessWidget {
  const JasosShowRoleWidget({super.key, required this.role, required this.word});
  final JasosRoleModel role;
  final String word;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(role.imagePath).animate(effects: [const ScaleEffect()]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(StringConst.yourRole,
                style: TextStyle(fontSize: 17.sp, color: UiColors.whiteColor)),
            SizedBox(width : AppDistances.small2.w),
            Text(
              role.roleName,
              style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: UiColors.whiteColor),
            ),
          ],
        ),

        SizedBox(height: AppDistances.small4.w),
        if(role.playerMode != JasosPlayerMode.jasos)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(StringConst.jasosWord,
                  style: TextStyle(fontSize: 17.sp, color: UiColors.whiteColor)),
              SizedBox(width: AppDistances.small2.w),
              Text(
                word,
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: UiColors.whiteColor),
              ),
            ],
          )
      ],
    );
  }
}
