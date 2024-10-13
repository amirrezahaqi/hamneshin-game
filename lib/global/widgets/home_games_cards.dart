import 'package:flutter/material.dart';

import '../utils/constants/app_distances.dart';
import '../utils/constants/ui_colors.dart';

class HomeGamesCards extends StatelessWidget {
  final String btnText;
  final String imageAsset;
  final Function onPress;
  const HomeGamesCards({
    super.key,
    required this.btnText,
    required this.onPress,
    required this.imageAsset,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 3.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.width / 3,
            child: Container(
              decoration: BoxDecoration(
                color: UiColors.darkBlueColor3,
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
                    child: Image.asset(
                      imageAsset,
                      width: size.width / 3,
                      height: size.width / 5,
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ),
          Text(
            btnText,
            style: const TextStyle(
                color: UiColors.whiteColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}