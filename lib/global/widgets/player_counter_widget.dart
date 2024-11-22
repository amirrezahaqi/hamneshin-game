import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayerCounterWidget extends StatelessWidget {
  const PlayerCounterWidget(
      {super.key,
      required this.playerCounts,
      required this.onItemTap,
      this.selectedItem = 0,
      this.textController});
  final List<int> playerCounts;
  final Function(int number, int indexItem) onItemTap;
  final int selectedItem;
  final TextEditingController? textController;
  @override
  Widget build(BuildContext context) {
    // text field widget
    final Widget textField = Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDistances.medium16),
      child: TextFormField(
        readOnly: true,
        controller: textController,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 3.w, horizontal: 3.w),
          filled: true,
          fillColor: UiColors.lightGreyColor2,
          hintText: "تعداد نفرات شرکت کننده در بازی چند نفر است؟",
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
            color: UiColors.greyColor,
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: UiColors.greyColor),
              borderRadius: BorderRadius.circular(3.w)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: UiColors.greyColor),
              borderRadius: BorderRadius.circular(3.w)),
        ),
      ),
    );
    final Widget countItemList = Wrap(
      children: List.generate(
        playerCounts.length,
        (index) {
          final bool selectCondition =
              selectedItem == playerCounts.indexOf(playerCounts[index]);
          return GestureDetector(
            onTap: () => onItemTap(
                playerCounts[index], playerCounts.indexOf(playerCounts[index])),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 350),
              margin: EdgeInsets.all(2.w),
              width: 10.w,
              height: 10.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.w),
                  border: Border.all(
                      color: selectCondition
                          ? UiColors.darkBlueColor3
                          : UiColors.greyColor),
                  color: selectCondition
                      ? UiColors.lightBlueColor4
                      : UiColors.lightGreyColor2),
              child: Center(
                child: Text(
                  playerCounts[index].toString(),
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: selectCondition
                          ? UiColors.darkBlueColor3
                          : UiColors.greyColor,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          );
        },
      ),
    );
    return Column(
      children: [textField, SizedBox(height: 2.w), countItemList],
    );
  }
}
