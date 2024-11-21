import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/theme/app_theme.dart';
import 'package:flutter_application_new/modules/cheshmak-marg/view/cheshmak_marg_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, screenType) => MaterialApp(
            title: 'Hamneshin',
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('fa'),
            ],
            locale: const Locale("fa"),
            theme: AppTheme.appTheme,
            home: const CheshmakMargScreen()));
  }
}
