import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/modules/jasos/models/jasos_role_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class JasosShowRoleWidget extends StatelessWidget {
  const JasosShowRoleWidget({super.key, required this.role});
  final JasosRoleModel role;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(role.imagePath),
        Text("نقش شما:",style: TextStyle(fontSize: 15.sp,color: UiColors.whiteColor)),
        SizedBox(height: AppDistances.small4.w),
        Text(
          role.roleName,
          style: TextStyle(fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: UiColors.whiteColor),
        ),
      ],
    );
  }
}
