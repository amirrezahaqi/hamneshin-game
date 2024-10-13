import 'package:flutter/material.dart';

import '../../../global/widgets/home_games_cards.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: HomeGamesCards(
          btnText: 'بازی گروهی دور',
          onPress: () {},
          imageAsset: 'assets/images/png/shah-dozd-jallad.png',
        )),
      ),
    );
  }
}
