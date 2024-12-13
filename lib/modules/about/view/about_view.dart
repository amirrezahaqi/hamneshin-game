import 'package:flutter/material.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/utils/constants/StringConst.dart';
import 'package:hamneshin.games.apps/global/utils/constants/app_distances.dart';
import 'package:hamneshin.games.apps/global/utils/constants/ui_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  // final String url = "https://github.com/amirrezahaqi/hamneshin-game";

  // Future<void> _launchURL() async {
  //   final Uri uri = Uri.parse(url);

  //   if (await canLaunchUrl(uri)) {
  //     await launchUrl(
  //       uri,
  //       mode: LaunchMode.externalApplication, // باز کردن در مرورگر خارجی
  //     );
  //   } else {
  //     throw "Could not launch $url";
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(AppDistances.pageBdyMargin),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              UiColors.darkBlueColor3,
              UiColors.darkBlueColor5,
            ],
          ),
        ),
        child: Padding(
            padding: const EdgeInsets.only(top: AppDistances.large),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 2.w,
                  ),
                  SizedBox(
                    width: 50.w,
                    child: Image.asset(
                      "assets/images/png/hamneshin.png",
                      scale: 3,
                    ),
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  const Text(
                    StringConst.developers,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 4.w,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.amirreza,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.mohammad,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.w,
                  ),
                  SizedBox(
                    width: AppDistances.medium16.w * 4,
                    child: const Divider(
                      color: UiColors.whiteColor,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  const Text(
                    textAlign: TextAlign.justify,
                    StringConst.aboutText,
                    style: TextStyle(
                        height: 1.5,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.normal),
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
                          "https://www.github.com/amirrezahaqi/hamneshin-game");
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/png/git.png",
                          scale: 10,
                        ),
                        const Text(
                          StringConst.git,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    StringConst.created,
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.w,
                  ),
                  const Text(
                    StringConst.version,
                    style: TextStyle(
                        fontSize: 10,
                        fontFamily: FontFamily.pelak,
                        color: UiColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )));
  }
}
