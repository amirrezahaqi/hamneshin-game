import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom-navigation.dart';
import 'package:flutter_application_new/modules/help/views/help_view.dart';
import 'package:flutter_application_new/modules/home/view/home_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding:  EdgeInsets.only(bottom: 35.w,top: 16.w),
                child: const IndexedStack(
                  index: 0,
                  children: [
                    HomeView(),
                    HelpView(),
                    SizedBox(),
                  ],
                ),
              ),
            ),

            // navigation
            Positioned(
              bottom: 4.w,
                left: 0,
                right: 0,
                child: const BottomNavigation()
            ),

            // app bar
            Positioned(
                top: 4.w,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 8.h,
                    child: const AppBarWidget())
            ),

          ],
        ),
      ),
    );
  }
}
