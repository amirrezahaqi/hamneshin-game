import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class JoratHaghighatCard extends StatelessWidget {
  final String btnText;
  final String imageAsset;
  final Function onPress;
  const JoratHaghighatCard({
    super.key,
    required this.btnText,
    required this.onPress,
    required this.imageAsset,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 5,
      width: size.width / 1.10,
      child: Container(
        decoration: BoxDecoration(
          color: UiColors.darkBlueColor,
          borderRadius: BorderRadius.circular(AppDistances.large),
        ),
        child: Container(
          margin: const EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            color: UiColors.lightBlueColor,
            borderRadius: BorderRadius.circular(AppDistances.large),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppDistances.large),
              ),
              backgroundColor: UiColors.lightBlueColor3,
            ),
            onPressed: () => onPress(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "بازی هیجان انگیز",
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      "جرعت یا حقیقت",
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MainButton(btnText: "شروع بازی", onPress: onPress),
                  ],
                ),
                SizedBox(
                  child: Image.asset(
                    imageAsset,
                    height: size.height / 5,
                    width: size.height / 5,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
