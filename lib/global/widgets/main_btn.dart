import 'package:flutter/material.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class MainButton extends StatelessWidget {
  final String btnText;
  final Function onPress;
  const MainButton({
    super.key,
    required this.btnText,
    required this.onPress,
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
              padding: const EdgeInsets.all(AppDistances.medium12),
              child: Text(
                btnText,
                style: const TextStyle(
                    color: UiColors.whiteColor, fontWeight: FontWeight.bold),
              ),
            )),
      ),
    );
  }
}
