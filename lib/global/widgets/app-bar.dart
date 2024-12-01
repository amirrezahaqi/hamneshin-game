import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/widgets/bottom_sheet_body_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return BottomSheetBodyWidget(children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 2.w,
                                ),
                                SizedBox(
                                  width: 60.w,
                                  child: Image.asset(
                                    "assets/images/png/sup.png",
                                    scale: 2,
                                  ),
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: UiColors.lightBlueColor),
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      StringConst.sup,
                                      style: TextStyle(
                                          fontFamily: FontFamily.pelak,
                                          color: UiColors.whiteColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.w,
                                ),
                                const Text(
                                  StringConst.supp,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: FontFamily.pelak,
                                      color: UiColors.whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: AppDistances.medium16.w * 4,
                                  child: const Divider(
                                    color: UiColors.whiteColor,
                                    thickness: 1,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    myLaunchUrl(String url) async {
                                      var uri = Uri.parse(url);
                                      if (await canLaunchUrl(uri)) {
                                        await launchUrl(uri,
                                            mode: LaunchMode
                                                .externalApplication); // استفاده از LaunchMode مناسب
                                      } else {
                                        print("Could not launch $url");
                                      }
                                    }

                                    myLaunchUrl("https://t.me/amirrezahaqi");
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/png/telegram.png",
                                        scale: 10,
                                      ),
                                      const Text(
                                        StringConst.telegram,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: FontFamily.pelak,
                                            color: UiColors.whiteColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    myLaunchUrl(String url) async {
                                      var uri = Uri.parse(url);
                                      if (await canLaunchUrl(uri)) {
                                        await launchUrl(uri,
                                            mode: LaunchMode
                                                .externalApplication); // استفاده از LaunchMode مناسب
                                      } else {
                                        print("Could not launch $url");
                                      }
                                    }

                                    myLaunchUrl(
                                        "https://eitaa.com/Amirrezahaqi");
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/png/eitaa.png",
                                        scale: 10,
                                      ),
                                      const Text(
                                        StringConst.eitaa,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: FontFamily.pelak,
                                            color: UiColors.whiteColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ]);
                        },
                      );
                    },
                    child: Image.asset(
                      "assets/images/png/supp.png",
                      scale: 1,
                    ),
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
