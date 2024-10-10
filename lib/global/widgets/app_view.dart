import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/theme/app_theme.dart';
import 'package:flutter_application_new/modules/home/view/home_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamneshin',
      theme: AppTheme.appTheme,
      home: const HomeView(),
    );
  }
}
