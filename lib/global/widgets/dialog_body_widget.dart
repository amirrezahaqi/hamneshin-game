import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamneshin.games.apps/global/utils/constants/app_distances.dart';
import 'package:hamneshin.games.apps/global/utils/constants/ui_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DialogBodyWidget extends StatelessWidget {
  const DialogBodyWidget({super.key, required this.dialogBody});
  final List<Widget> dialogBody;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(AppDistances.small8.w),
        child: Container(
          padding: EdgeInsets.all(3.w),
          width: double.infinity,
          decoration: BoxDecoration(
              color: UiColors.darkBlueColor3,
              borderRadius: BorderRadius.circular(AppDistances.small4.w),
              border: Border.all(color: UiColors.lightBlueColor4, width: 2),
              boxShadow: [
                BoxShadow(
                    color: UiColors.darkBlueColor3.withOpacity(0.50),
                    offset: const Offset(0, 3),
                    blurRadius: 30)
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const _CloseDialogButtonWidget(),
              // SizedBox(height: AppDistances.small2.w),
              Column(
                children: dialogBody,
              )
            ],
          ),
        ));
  }
}

class _CloseDialogButtonWidget extends StatelessWidget {
  const _CloseDialogButtonWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          width: 8.w,
          height: 8.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: UiColors.lightGreyColor2,
              border: Border.all(color: UiColors.greyColor)),
          child: const Icon(CupertinoIcons.clear),
        ),
      ),
    );
  }
}
