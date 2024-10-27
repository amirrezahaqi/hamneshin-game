import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/widgets/app_view.dart';
import 'package:flutter_application_new/modules/pantomim/view/cubit/pantomim_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (_) => PantomimCubit(),
      child: const AppView(),
    ),
  );
}
