import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/cubits/navigation_cubit.dart';
import 'package:flutter_application_new/global/widgets/app_view.dart';
import 'package:flutter_application_new/modules/cheshmak-marg/cubit/cheshmakmarg_cubit.dart';
import 'package:flutter_application_new/modules/home/cubit/home_cubit.dart';
import 'package:flutter_application_new/modules/jorat-haghighat/cubit/jorathaghighat_cubit.dart';
import 'package:flutter_application_new/modules/pantomim/cubit/pantomim_cubit.dart';
import 'package:flutter_application_new/modules/shah-dozd/cubit/shah_dozd_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CheshmakmargCubit()),
        BlocProvider(create: (_) => PantomimCubit()),
        BlocProvider(create: (_) => ShahDozdCubit()),
        BlocProvider(create: (_) => JorathaghighatCubit()),
        BlocProvider(create: (_) => HomeCubit()),
        BlocProvider(create: (_) => NavigationCubit())
      ],
      child: const AppView(),
    ),
  );
}
