import 'package:flutter/material.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class InfoGamesItems extends StatelessWidget {
  final String btnText;
  final String imageAsset;
  final Function onPress;
  const InfoGamesItems({
    super.key,
    required this.btnText,
    required this.onPress,
    required this.imageAsset,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: AppDistances.large, left: AppDistances.large),
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
              child: Padding(
                padding: const EdgeInsets.only(left: AppDistances.small2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 5, left: 15, top: 5),
                          child: SizedBox(
                            height: 80,
                            child: Image.asset(imageAsset),
                          ),
                        ),
                        Text(
                          btnText,
                          style: const TextStyle(
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_circle_left_outlined,
                      color: UiColors.whiteColor,
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
