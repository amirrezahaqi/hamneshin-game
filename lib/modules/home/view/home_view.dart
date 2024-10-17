import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom_sheet_body_widget.dart';
import 'package:flutter_application_new/global/widgets/dialog_body_widget.dart';
import 'package:flutter_application_new/global/widgets/main_btn.dart';
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
          body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(20),
                child: MainButton(
                    btnText: "open",
                    onPress: () => buildShowCustomModalBottomSheet(
                          context: context,
                          builder: (context) =>
                              const BottomSheetBodyWidget(children: []),
                        )),
              )))),
    );
  }
}
