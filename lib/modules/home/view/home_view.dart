import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/widgets/home_games_cards.dart';
import 'package:flutter_application_new/global/widgets/jorat-haghighat-card.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/player_counter_widget.dart';
import 'package:flutter_application_new/modules/cheshmak-marg/view/cheshmak_marg_screen.dart';
import 'package:flutter_application_new/modules/home/cubit/home_cubit.dart';
import 'package:flutter_application_new/modules/jasos/views/jasos_view.dart';
import 'package:flutter_application_new/modules/mafia/view/mafia_view.dart';
import 'package:flutter_application_new/modules/pantomim/view/pantomim_screen.dart';
import 'package:flutter_application_new/modules/shah-dozd/view/shah_dozd_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../global/widgets/dialog_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController mafiaPlayerCount = TextEditingController();
    return MaterialApp(
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
                    JoratHaghighatCard(
                      btnText: '',
                      onPress: () {},
                      imageAsset: 'assets/images/png/jorat-haghighat.png',
                    ),
                    SizedBox(
                      height: size.height / 30,
                    ),
                    SizedBox(
                        width: size.width / 1.10,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                HomeGamesCards(
                                    btnText: "بازی مافیا",
                                    onPress: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          final playerCountsList = [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
                                          return DialogBodyWidget(
                                            dialogBody: [
                                              Image.asset(
                                                  Assets
                                                      .images.png.mafia.path,
                                                  scale: 8),
                                              BlocBuilder<HomeCubit,
                                                  HomeState>(
                                                builder: (context, state) {
                                                  final homeCubit = BlocProvider.of<HomeCubit>(context);
                                                  return PlayerCounterWidget(
                                                    textController:
                                                        mafiaPlayerCount,
                                                    playerCounts:
                                                        playerCountsList,
                                                    selectedItem: state is HomeChangeMafiaPlayerCount ? state.playerCount : 0,
                                                    onItemTap: (number, indexItem) {
                                                      mafiaPlayerCount.text = number.toString();
                                                      homeCubit.changeMafiaPlayerCount(playerCount: indexItem);
                                                    },
                                                  );
                                                },
                                              ),
                                              MainButton(
                                                  btnText: "شروع بازی",
                                                  onPress: () {
                                                    if (mafiaPlayerCount
                                                        .text.isEmpty) {
                                                      mafiaPlayerCount.text =
                                                          playerCountsList[0]
                                                              .toString();
                                                    }
                                                    Navigator.pop(context);// close dialog
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder:
                                                              (context) => MafiaView(playerCount: int.parse(mafiaPlayerCount.text),
                                                          ),
                                                        ));
                                                  }),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    imageAsset:
                                        "assets/images/png/mafia.png"),
                                HomeGamesCards(
                                    btnText: "بازی جاسوس",
                                    onPress: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const JasosView()));
                                    },
                                    imageAsset:
                                        "assets/images/png/jasoos.png"),
                                HomeGamesCards(
                                    btnText: "بازی پانتومیم ",
                                    onPress: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PantomimScreen()));
                                    },
                                    imageAsset:
                                        "assets/images/png/pantomim.png"),
                              ],
                            ),
                            SizedBox(
                              height: size.height / 20,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                              children: [
                                HomeGamesCards(
                                    btnText: "بازی دور",
                                    onPress: () {

                                    },
                                    imageAsset: "assets/images/png/dor.png"),
                                HomeGamesCards(
                                    btnText: "بازی چشمک مرگ",
                                    onPress: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const CheshmakMargScreen()));
                                    },
                                    imageAsset:
                                        "assets/images/png/cheshmak-marg.png"),
                                HomeGamesCards(
                                    btnText: "بازی شاه دزد جلاد",
                                    onPress: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ShahDozdScreen()));
                                    },
                                    imageAsset:
                                        "assets/images/png/shah-dozd-jallad.png"),
                              ],
                            ),
                          ],
                        ))
                  ],
                )))),
      ),
    );
  }
}
