import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/widgets/app_view.dart';
import 'package:flutter_application_new/modules/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => HomeCubit(),
      child: const AppView(),
    ),
  );
}
