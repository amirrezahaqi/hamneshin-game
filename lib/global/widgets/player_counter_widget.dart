import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';

class PlayerCounterWidget extends StatelessWidget {
  const PlayerCounterWidget({super.key, required this.playerCounts});
  final List<int> playerCounts;
  @override
  Widget build(BuildContext context) {
    final Widget textField = TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: UiColors.greenColor
      ),
    );
    return Column(
      children: [
        textField
      ],
    );
  }
}
