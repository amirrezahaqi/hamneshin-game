import 'package:flutter/material.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class MainButton extends StatelessWidget {
  final String btnText;
  final Function onPress;
  double padding;
  double fontsize;
  MainButton({
    super.key,
    required this.btnText,
    required this.onPress,
    this.padding = AppDistances.medium12,
    this.fontsize = 14,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: UiColors.greenColor,
        borderRadius: BorderRadius.circular(AppDistances.medium12),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 5),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [UiColors.greenColor, UiColors.darkGreenColor],
          ),
          borderRadius: BorderRadius.circular(AppDistances.medium12),
        ),
        child: TextButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppDistances.medium16),
                ),
                backgroundColor: Colors.transparent),
            onPressed: () => onPress(),
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Text(
                btnText,
                style: TextStyle(
                    fontFamily: FontFamily.pelak,
                    color: UiColors.whiteColor,
                    fontSize: fontsize,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
