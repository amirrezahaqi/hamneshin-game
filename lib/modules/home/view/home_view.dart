import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/gen/fonts.gen.dart';
import 'package:flutter_application_new/global/utils/constants/StringConst.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/bottom_sheet_body_widget.dart';
import 'package:flutter_application_new/global/widgets/comming_soon_game.dart';
import 'package:flutter_application_new/global/widgets/home_games_cards.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/player_counter_widget.dart';
import 'package:flutter_application_new/modules/cheshmak-marg/view/cheshmak_marg_screen.dart';
import 'package:flutter_application_new/modules/home/cubit/home_cubit.dart';
import 'package:flutter_application_new/modules/jasos/views/jasos_view.dart';
import 'package:flutter_application_new/modules/jorat-haghighat/view/jorathaghighat_screen.dart';
import 'package:flutter_application_new/modules/mafia/view/mafia_view.dart';
import 'package:flutter_application_new/modules/pantomim/view/pantomim_screen.dart';
import 'package:flutter_application_new/modules/shah-dozd/view/shah_dozd_screen.dart';
import 'package:flutter_application_new/modules/splash/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../global/widgets/dialog_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController mafiaPlayerCount = TextEditingController();
    final TextEditingController jasosPlayerCount = TextEditingController();
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                    child: Column(
                  children: [
                    SizedBox(
                      height: size.height / 20,
                    ),
                    CommingSoonCard(
                      btnText: '',
                      onPress: () {
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
                                    width: 50.w,
                                    child: Image.asset(
                                      "assets/images/png/dor.png",
                                      scale: 3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.w,
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: UiColors.lightBlueColor),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        StringConst.aboutGame,
                                        style: TextStyle(
                                            fontFamily: FontFamily.pelak,
                                            color: UiColors.whiteColor,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.w,
                                  ),
                                  const Text(
                                    StringConst.dorehami,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: FontFamily.pelak,
                                        color: UiColors.whiteColor,
                                        fontWeight: FontWeight.bold),
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
                                  SizedBox(
                                    width: 90.w,
                                    child: const Text(
                                      textAlign: TextAlign.justify,
                                      StringConst.dorGame,
                                      style: TextStyle(
                                          height: 1.5,
                                          fontFamily: FontFamily.pelak,
                                          color: UiColors.whiteColor,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.w,
                                  ),
                                ],
                              )
                            ]);
                          },
                        );
                      },
                      imageAsset: 'assets/images/png/dor.png',
                    ).animate(effects: [const ScaleEffect(duration: Duration(milliseconds: 350))]),
                    SizedBox(
                      height: size.height / 30,
                    ),
                    SizedBox(
                        width: size.width / 1.10,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                HomeGamesCards(
                                    btnText: StringConst.mafiaGame,
                                    onPress: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          final playerCountsList = [
                                            6,
                                            7,
                                            8,
                                            9,
                                            10,
                                            11,
                                            12,
                                            13,
                                            14,
                                            15,
                                            16
                                          ];
                                          return DialogBodyWidget(
                                            dialogBody: [
                                              Image.asset(
                                                  Assets.images.png.mafia.path,
                                                  scale: 1),
                                              BlocBuilder<HomeCubit, HomeState>(
                                                builder: (context, state) {
                                                  return PlayerCounterWidget(
                                                    textController:
                                                        mafiaPlayerCount,
                                                    playerCounts:
                                                        playerCountsList,
                                                    selectedItem: state
                                                            is HomeChangeMafiaPlayerCount
                                                        ? state.playerCount
                                                        : 0,
                                                    onItemTap:
                                                        (number, indexItem) {
                                                      mafiaPlayerCount.text =
                                                          number.toString();
                                                      homeCubit
                                                          .changeMafiaPlayerCount(
                                                              playerCount:
                                                                  indexItem);
                                                    },
                                                  );
                                                },
                                              ),
                                              MainButton(
                                                  padding: AppDistances.small4,
                                                  btnText:
                                                      StringConst.startGameBtn,
                                                  onPress: () {
                                                    if (mafiaPlayerCount
                                                        .text.isEmpty) {
                                                      mafiaPlayerCount.text =
                                                          playerCountsList[0]
                                                              .toString();
                                                    }
                                                    Navigator.pop(
                                                        context); // close dialog
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              MafiaView(
                                                            playerCount: int.parse(
                                                                mafiaPlayerCount
                                                                    .text),
                                                          ),
                                                        ));
                                                  }),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    imageAsset: "assets/images/png/mafia.png"),
                                HomeGamesCards(
                                    btnText: StringConst.jasosGame,
                                    onPress: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          final playerCountsList = [
                                            6,
                                            7,
                                            8,
                                            9,
                                            10,
                                            11,
                                            12,
                                            13,
                                            14,
                                            15,
                                            16
                                          ];
                                          return DialogBodyWidget(dialogBody: [
                                            Image.asset(
                                                Assets.images.png.jasoos.path,
                                                scale: 1),
                                            BlocBuilder<HomeCubit, HomeState>(
                                              builder: (context, state) {
                                                return PlayerCounterWidget(
                                                  textController:
                                                      jasosPlayerCount,
                                                  playerCounts:
                                                      playerCountsList,
                                                  selectedItem: state
                                                          is HomeChangeJasosPlayerCount
                                                      ? state.playerCount
                                                      : 0,
                                                  onItemTap:
                                                      (number, indexItem) {
                                                    jasosPlayerCount.text =
                                                        number.toString();
                                                    homeCubit
                                                        .changeJasosPlayerCount(
                                                            playerCount:
                                                                indexItem);
                                                  },
                                                );
                                              },
                                            ),
                                            MainButton(
                                                padding: AppDistances.small4,
                                                btnText:
                                                    StringConst.startGameBtn,
                                                onPress: () {
                                                  if (jasosPlayerCount
                                                      .text.isEmpty) {
                                                    jasosPlayerCount.text =
                                                        playerCountsList[0]
                                                            .toString();
                                                  }
                                                  Navigator.pop(
                                                      context); // close dialog
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) => JasosView(
                                                              playerCount: int.parse(
                                                                  jasosPlayerCount
                                                                      .text))));
                                                })
                                          ]);
                                        },
                                      );
                                    },
                                    imageAsset: "assets/images/png/jasoos.png"),
                                HomeGamesCards(
                                    btnText: StringConst.pantomimGame,
                                    onPress: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const PantomimScreen()));
                                    },
                                    imageAsset:
                                        "assets/images/png/pantomim.png"),
                              ],
                            ).animate(effects: [const ScaleEffect(duration: Duration(milliseconds: 350),delay: Duration(milliseconds: 350))]),
                            SizedBox(
                              height: size.height / 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                HomeGamesCards(
                                  btnText: StringConst.jorathaghighat,
                                  onPress: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const JoratHaghighatScreen()));
                                  },
                                  imageAsset:
                                      "assets/images/png/jorat-haghighat.png",
                                ),
                                HomeGamesCards(
                                    btnText: StringConst.cheshmakGame,
                                    onPress: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const CheshmakMargScreen()));
                                    },
                                    imageAsset:
                                        "assets/images/png/cheshmak-marg.png"),
                                HomeGamesCards(
                                    btnText: StringConst.sdjvGame,
                                    onPress: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const ShahDozdScreen()));
                                    },
                                    imageAsset:
                                        "assets/images/png/shah-dozd-jallad.png"),
                              ],
                            ).animate(effects: [const ScaleEffect(duration: Duration(milliseconds: 350),delay: Duration(milliseconds: 700))]),
                          ],
                        ))
                  ],
                )))),
      ),
    );
  }
}
