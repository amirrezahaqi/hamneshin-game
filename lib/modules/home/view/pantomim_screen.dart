import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';

import '../../../global/utils/constants/ui_colors.dart';
import '../../../global/widgets/bottom-navigation.dart';

class PantomimScreen extends StatelessWidget {
  const PantomimScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Container(
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
          child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(size.height / 12),
                  child: const AppBarWidget()),
              bottomNavigationBar: const BottomNavigation(),
              body: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size.height / 50,
                        ),
                        SizedBox(
                          width: size.width / 1.25,
                          child: const Text(
                            textAlign: TextAlign.center,
                            "به صورت  رندوم از میون کلی کلمات ، کلمه مناسب رو برای اجرا پانتومیم خود پیدا کنید",
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Image.asset(
                          "assets/images/png/pantomim-mask.png",
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: size.width / 1.25,
                              child: const Text(
                                textAlign: TextAlign.center,
                                ": کلمه شما",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: FontFamily.pelak,
                                    color: UiColors.whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              width: size.width / 1.25,
                              child: const Text(
                                textAlign: TextAlign.center,
                                "سوسک بال دار",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: FontFamily.pelak,
                                    color: UiColors.whiteColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height / 50,
                        ),
                        MainButton(
                          btnText: "!پانتومیم من رو بگو",
                          onPress: () {},
                          fontsize: 20,
                        )
                      ],
                    ),
                  ))),
        ),
      ),
    );
  }
}
