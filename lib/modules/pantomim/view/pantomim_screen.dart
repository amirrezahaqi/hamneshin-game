import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom-navigation.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/modules/pantomim/cubit/pantomim_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PantomimScreen extends StatefulWidget {
  const PantomimScreen({super.key});

  @override
  State<PantomimScreen> createState() => _PantomimScreenState();
}

class _PantomimScreenState extends State<PantomimScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cubit = context.read<PantomimCubit>();

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
            child: AppBarWidget(),
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
                      StringConst.pantomimStartInfo,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: FontFamily.pelak,
                          color: UiColors.whiteColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset("assets/images/png/pantomim-mask.png").animate(
                      effects: [
                        const FadeEffect(duration: Duration(milliseconds: 450))
                      ]),
                  Column(
                    children: [
                      SizedBox(
                        width: size.width / 1.25,
                        child: const Text(
                          textAlign: TextAlign.center,
                          StringConst.yourWords,
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 1.25,
                        child: BlocBuilder<PantomimCubit, String>(
                          builder: (context, word) {
                            return Text(
                              textAlign: TextAlign.center,
                              word.isEmpty ? StringConst.notSelectWords : word,
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontFamily: FontFamily.pelak,
                                  color: UiColors.whiteColor,
                                  fontWeight: FontWeight.bold),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height / 50),
                  MainButton(
                    btnText: StringConst.yourPantomimBtn,
                    onPress: () async {
                      cubit.generateRandomWord();
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
