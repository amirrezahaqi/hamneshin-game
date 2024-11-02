import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/widgets/app_view.dart';
import 'package:flutter_application_new/modules/cheshmak-marg/cubit/cheshmakmarg_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => CheshmakmargCubit(),
      child: const AppView(),
    ),
  );
}
