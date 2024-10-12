import 'package:flutter/material.dart';

import '../../../global/widgets/main_btn.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: MainButton(
          btnText: 'گوشیو بده بغلیت!',
          onPress: () {},
        )),
      ),
    );
  }
}
