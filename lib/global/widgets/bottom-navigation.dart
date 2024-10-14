import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          right: AppDistances.large,
          left: AppDistances.large,
          bottom: AppDistances.small8),
      child: Container(
        height: size.height / 8,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [UiColors.darkBlueColor, UiColors.darkBlueColor2],
          ),
          borderRadius: BorderRadius.circular(AppDistances.medium12),
          border: Border.all(
            color: UiColors.darkBlueColor3, // رنگ بوردر
            width: 2.0, // ضخامت بوردر
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/about.svg',
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    const Text(
                      "درباره ما",
                      style: TextStyle(
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/home.svg',
                      height: 80,
                      width: 80,
                    ),
                    const Text(
                      "خانه",
                      style: TextStyle(
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/svg/info.svg',
                      height: 80,
                      width: 80,
                      fit: BoxFit.fill,
                    ),
                    const Text(
                      "راهنما",
                      style: TextStyle(
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
