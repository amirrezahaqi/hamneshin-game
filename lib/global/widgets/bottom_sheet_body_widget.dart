import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BottomSheetBodyWidget extends StatelessWidget {
  const BottomSheetBodyWidget({super.key, required this.children, this.padding = 25.0});
  final List<Widget> children;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: UiColors.darkBlueColor3,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(AppDistances.medium12.w),
              topLeft: Radius.circular(AppDistances.medium12.w)),
          border: const Border(
              top: BorderSide(color: UiColors.lightBlueColor4, width: 3)),
          boxShadow: [
            BoxShadow(
                color: UiColors.darkBlueColor3.withOpacity(0.50),
                offset: const Offset(0, 3),
                blurRadius: 30)
          ]),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: children,
        ),
      ),
    );
  }
}

/// Only use this function for correct display
Future<dynamic> buildShowCustomModalBottomSheet(
    {required BuildContext context,
    required Widget Function(BuildContext context) builder}) {
  return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: builder);
}
