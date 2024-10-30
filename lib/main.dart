import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/widgets/app_view.dart';
import 'package:flutter_application_new/modules/jorat-haghighat/cubit/jorathaghighat_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => JorathaghighatCubit(),
      child: const AppView(),
    ),
  );
}
