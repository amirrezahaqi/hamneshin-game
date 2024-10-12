import 'package:flutter/material.dart';

import '../../../global/widgets/info_games_items.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: InfoGamesItems(
          btnText: 'بازی گروهی دور',
          onPress: () {},
          imageAsset: 'assets/images/png/dor.png',
        )),
      ),
    );
  }
}
