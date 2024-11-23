import 'package:flutter/material.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          right: AppDistances.large,
          left: AppDistances.large,
          top: AppDistances.medium12),
      child: Container(
        height: size.height / 8,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: UiColors.lightBlueColor),
          color: UiColors.darkBlueColor2,
          borderRadius: BorderRadius.circular(AppDistances.large * 2),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Positioned(
              left: 0,
              child: Container(
                  height: size.height / 15,
                  width: size.height / 15,
                  decoration: BoxDecoration(
                      color: UiColors.darkBlueColor3,
                      borderRadius:
                          BorderRadius.circular(AppDistances.large * 2)),
                  child: Image.asset(
                    "assets/images/png/music.png",
                    scale: 1,
                  )),
            ),
            Positioned(
              child: Image.asset(
                "assets/images/png/hamneshin.png",
                height: 40,
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                  height: size.height / 15,
                  width: size.height / 15,
                  decoration: BoxDecoration(
                      color: UiColors.darkBlueColor3,
                      borderRadius:
                          BorderRadius.circular(AppDistances.large * 2)),
                  child: Image.asset(
                    "assets/images/png/star.png",
                    scale: 1,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
