import 'package:flutter/material.dart';

import '../../../global/widgets/bottom-navigation.dart';
import '../../../global/widgets/jorat-haghighat-card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigation(),
      body: Container(
        child: Center(
            child: JoratHaghighatCard(
          btnText: 'بازی گروهی دور',
          onPress: () {},
          imageAsset: 'assets/images/png/jorat-haghighat.png',
        )),
      ),
    );
  }
}
