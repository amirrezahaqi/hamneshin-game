import 'package:flutter/material.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/utils/constants/StringConst.dart';
import 'package:hamneshin.games.apps/global/widgets/main_btn.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class CommingSoonCard extends StatelessWidget {
  final String btnText;
  final String imageAsset;
  final Function onPress;
  const CommingSoonCard({
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      StringConst.commingSoonGame,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                    const Text(
                      StringConst.dorehami,
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MainButton(
                      btnText: StringConst.aboutGame,
                      onPress: onPress,
                      padding: AppDistances.small2,
                    ),
                  ],
                ),
                SizedBox(
                  child: Image.asset(
                    imageAsset,
                    height: size.height / 5.5,
                    width: size.height / 5.5,
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
