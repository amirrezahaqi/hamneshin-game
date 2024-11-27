import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom-navigation.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/modules/home/view/home_view.dart';
import 'package:flutter_application_new/modules/jorat-haghighat/cubit/jorathaghighat_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JoratHaghighatScreen extends StatefulWidget {
  const JoratHaghighatScreen({super.key});

  @override
  State<JoratHaghighatScreen> createState() => _JoratHaghighatScreenState();
}

class _JoratHaghighatScreenState extends State<JoratHaghighatScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cubit = context.read<JorathaghighatCubit>();

    return SafeArea(
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
            child: const AppBarWidget(),
          ),
          bottomNavigationBar: BottomNavigation(
            onPageChange: (int pageIndex) {},
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height / 50),
                  SizedBox(
                    width: size.width / 1.25,
                    child: const Text(
                      textAlign: TextAlign.center,
                      StringConst.jhInfo,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  BlocBuilder<JorathaghighatCubit, double>(
                    builder: (context, deg) {
                      return AnimatedRotation(
                        curve: Curves.easeInOut,
                        turns: deg * 10,
                        duration: const Duration(seconds: 2),
                        child: Image.asset(
                            "assets/images/png/jorat-haghighat-miz.png").animate(effects: [const FadeEffect(duration: Duration(milliseconds: 500))]),
                      );
                    },
                  ),
                  SizedBox(height: size.height / 50),
                  MainButton(
                    btnText: StringConst.rotateBtn,
                    onPress: () async {
                      cubit.generateRandomDeg();
                      await _audioPlayer
                          .play(AssetSource('sounds/greenbtn.mp3'));
                    },
                    fontsize: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
