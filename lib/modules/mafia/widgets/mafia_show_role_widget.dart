import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/modules/mafia/models/mafia_role_model.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MafiaShowRoleWidget extends StatelessWidget {
  const MafiaShowRoleWidget({super.key, required this.role});
  final MafiaRoleModel role;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(Assets.images.png.mafia.path),
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
