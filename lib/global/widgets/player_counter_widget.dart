import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PlayerCounterWidget extends StatelessWidget {
  const PlayerCounterWidget({super.key, required this.playerCounts, required this.onItemTap,this.selectedItem = 0});
  final List<int> playerCounts;
  final Function(int number) onItemTap;
  final int selectedItem;
  @override
  Widget build(BuildContext context) {
    // text field widget
    final Widget textField = TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 2.w,horizontal: 3.w),
        filled: true,
        fillColor: UiColors.lightGreyColor2,
        hintText: "تعداد نفرات شرکت کننده در بازی چند نفر است؟",
        hintStyle: TextStyle(fontSize: 14.sp,color: UiColors.greyColor),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: UiColors.greyColor),
          borderRadius: BorderRadius.circular(3.w)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: UiColors.greyColor),
          borderRadius: BorderRadius.circular(3.w)
        ),
      ),
    );
    final Widget countItem = Wrap(
      children: List.generate(
        playerCounts.length,
        (index) {
          final bool selectCondition = selectedItem == playerCounts.indexOf(playerCounts[index]);
          return GestureDetector(
          onTap: () => onItemTap(playerCounts[index]),
          child: Container(
            margin: EdgeInsets.all(2.w),
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.w),
              border: Border.all(color: UiColors.greyColor),
              color: UiColors.lightGreyColor2
            ),
            child: Center(
              child: Text(
                playerCounts[index].toString(),
                style: TextStyle(
                    fontSize: 20.sp,
                    color: selectCondition? UiColors.darkBlueColor3 : UiColors.greyColor,
                    fontWeight: FontWeight.w700),),),
          ),
        );
        },
      ),
    );
    return Column(
      children: [
        textField,
        SizedBox(height: 2.w),
        countItem
      ],
    );
  }
}
