import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/player_counter_widget.dart';

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
        body: const PlayerCounterWidget(playerCounts: [6,7,8,9,10,11,12,13,14,15])
      ),
    );
  }
}
