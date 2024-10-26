import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';

import '../../../global/utils/constants/ui_colors.dart';
import '../../../global/widgets/bottom-navigation.dart';

class MafiaGameScreen extends StatelessWidget {
  const MafiaGameScreen({super.key});

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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: size.width / 1.25,
                        child: const Text(
                          textAlign: TextAlign.center,
                          "افراد به صورت نوبتی با کلیک بروی دکمه پایین نقششون رو  به شکل رندوم مشخص می کنند",
                          style: TextStyle(
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Image.asset(
                        "assets/images/png/mafia.png",
                        scale: 1,
                      ),
                      MainButton(
                        btnText: "!نقش من رو بگو",
                        onPress: () {},
                        fontsize: 20,
                      )
                    ],
                  ))),
        ),
      ),
    );
  }
}
