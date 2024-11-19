import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/home_games_cards.dart';
import 'package:flutter_application_new/global/widgets/jorat-haghighat-card.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
import 'package:flutter_application_new/global/widgets/player_counter_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../global/utils/constants/ui_colors.dart';
import '../../../global/widgets/bottom-navigation.dart';
import '../../../global/widgets/dialog_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                                          builder: (context) => DialogBodyWidget(
                                            dialogBody: [
                                              Image.asset(Assets.images.png.mafia.path,scale: 8,),
                                              PlayerCounterWidget(
                                                playerCounts: const [6,7,8,9,10,11,12,13,14,15,16],
                                                 selectedItem: 7,
                                                 onItemTap: (number) {
                                              },),
                                              MainButton(btnText: "شروع بازی", onPress:(){})
                                            ],
                                          ));


                                      },
                                      imageAsset:
                                          "assets/images/png/mafia.png"),
                                  HomeGamesCards(
                                      btnText: "بازی جاسوس",
                                      onPress: () {},
                                      imageAsset:
                                          "assets/images/png/jasoos.png"),
                                  HomeGamesCards(
                                      btnText: "بازی پانتومیم ",
                                      onPress: () {},
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
                                      onPress: () {},
                                      imageAsset: "assets/images/png/dor.png"),
                                  HomeGamesCards(
                                      btnText: "بازی چشمک مرگ",
                                      onPress: () {},
                                      imageAsset:
                                          "assets/images/png/cheshmak-marg.png"),
                                  HomeGamesCards(
                                      btnText: "بازی شاه دزد جلاد",
                                      onPress: () {},
                                      imageAsset:
                                          "assets/images/png/shah-dozd-jallad.png"),
                                ],
                              ),
                            ],
                          ))
                    ],
                  )))),
        ),
      ),
    );
  }
}
