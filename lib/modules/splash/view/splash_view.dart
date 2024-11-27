import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/main_wrapper.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainWrapper()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.all(AppDistances.pageBdyMargin),
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              center: Alignment.center,
              radius: 1.0, // شعاع گرادیان
              colors: [
                UiColors.lightBlueColor6, // رنگ روشن‌تر در مرکز
                UiColors.darkBlueColor6, // رنگ تیره‌تر در حاشیه
              ],
              stops: [
                0.3, // روشنایی تا این نقطه
                1.0, // تیره‌تر از این نقطه به بعد
              ],
            ),
          ),
          child: Padding(
              padding: const EdgeInsets.only(top: AppDistances.large),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 30.w,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 50.w,
                          child: Image.asset(
                            "assets/images/png/hamneshin.png",
                            scale: 3,
                          ),
                        ),
                        SizedBox(
                          height: 2.w,
                        ),
                        SizedBox(
                          width: 50.w,
                          child: Image.asset(
                            "assets/images/png/splashText.png",
                            scale: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 40.w,
                    child: const Column(
                      children: [
                        SpinKitThreeBounce(
                          color: UiColors.whiteColor,
                        ),
                        Text(
                          StringConst.loaded,
                          style: TextStyle(
                              height: 1.5, // فاصله بین خطوط
      
                              fontSize: 20,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 8.w,
                    child: const Text(
                      StringConst.created,
                      style: TextStyle(
                          height: 1.5, // فاصله بین خطوط
      
                          fontSize: 15,
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    bottom: 2.w,
                    child: const Text(
                      StringConst.version,
                      style: TextStyle(
                          height: 1.5, // فاصله بین خطوط
      
                          fontSize: 10,
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ))),
    );
  }
}
