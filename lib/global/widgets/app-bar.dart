import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                child: SvgPicture.asset(
                  "assets/images/svg/music.svg",
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Positioned(
              child: Image.asset(
                "assets/images/png/logo.png",
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
                child: SvgPicture.asset(
                  "assets/images/svg/star.svg",
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
