import 'package:flutter/material.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/utils/constants/StringConst.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.onPageChange,
  });

  final Function(int pageIndex) onPageChange;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(
          right: AppDistances.large,
          left: AppDistances.large,
          bottom: AppDistances.large),
      child: Container(
        height: size.height / 8.2,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: UiColors.lightBlueColor,
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => onPageChange(2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/png/darbare.png",
                      scale: 4,
                    ),
                    const Text(
                      StringConst.about,
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => onPageChange(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/png/home.png",
                      scale: 4,
                    ),
                    const Text(
                      StringConst.home,
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => onPageChange(1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      "assets/images/png/rahnama.png",
                      scale: 4,
                    ),
                    const Text(
                      StringConst.help,
                      style: TextStyle(
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
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
