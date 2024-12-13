import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/cubits/navigation_cubit.dart';
import 'package:hamneshin.games.apps/global/utils/constants/StringConst.dart';
import 'package:hamneshin.games.apps/global/utils/constants/ui_colors.dart';
import 'package:hamneshin.games.apps/global/widgets/app-bar.dart';
import 'package:hamneshin.games.apps/global/widgets/bottom-navigation.dart';
import 'package:hamneshin.games.apps/global/widgets/bottom_sheet_body_widget.dart';
import 'package:hamneshin.games.apps/global/widgets/main_btn.dart';
import 'package:hamneshin.games.apps/global/widgets/main_btn2.dart';
import 'package:hamneshin.games.apps/global/widgets/main_wrapper.dart';
import 'package:hamneshin.games.apps/modules/pantomim/cubit/pantomim_cubit.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
    final navCubit = context.watch<NavigationCubit>();

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
            onPageChange: (int pageIndex) {
              if (pageIndex == 0) {
                buildShowCustomModalBottomSheet(
                  builder: (context) {
                    return BottomSheetBodyWidget(
                      children: [
                        Text("آیا قصد خروج از بازی را دارید؟",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor)),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MainButton2(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const MainWrapper(),
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/greenbtn.mp3'));
                                Navigator.pop(context);
                              },
                              btnText: "ادامه بازی",
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  context: context,
                );
              } else if (pageIndex == 1) {
                buildShowCustomModalBottomSheet(
                  builder: (context) {
                    return BottomSheetBodyWidget(
                      children: [
                        Text("آیا قصد خروج از بازی را دارید؟",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor)),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MainButton2(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                navCubit.changePage(1);
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const MainWrapper(),
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/greenbtn.mp3'));
                                Navigator.pop(context);
                              },
                              btnText: "ادامه بازی",
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  context: context,
                );
              } else if (pageIndex == 2) {
                buildShowCustomModalBottomSheet(
                  builder: (context) {
                    return BottomSheetBodyWidget(
                      children: [
                        Text("آیا قصد خروج از بازی را دارید؟",
                            style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: UiColors.whiteColor)),
                        SizedBox(height: 8.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MainButton2(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/orangebtn.mp3'));
                                navCubit.changePage(2);
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => const MainWrapper(),
                                ));
                              },
                              btnText: "خروج از بازی",
                            ),
                            MainButton(
                              onPress: () async {
                                await _audioPlayer
                                    .play(AssetSource('sounds/greenbtn.mp3'));
                                Navigator.pop(context);
                              },
                              btnText: "ادامه بازی",
                            ),
                          ],
                        )
                      ],
                    );
                  },
                  context: context,
                );
              }
            },
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height / 80),
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
                  Image.asset("assets/images/png/pantomim.png").animate(
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
