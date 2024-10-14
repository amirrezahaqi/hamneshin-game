import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';

import '../../../global/widgets/jorat-haghighat-card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(size.height / 12),
            child: const AppBarWidget()),
        body: Center(
            child: JoratHaghighatCard(
          btnText: 'بازی گروهی دور',
          onPress: () {},
          imageAsset: 'assets/images/png/jorat-haghighat.png',
        )),
      ),
    );
  }
}
