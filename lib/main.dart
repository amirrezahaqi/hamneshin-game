import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamneshin.games.apps/global/cubits/navigation_cubit.dart';
import 'package:hamneshin.games.apps/global/widgets/app_view.dart';
import 'package:hamneshin.games.apps/modules/cheshmak-marg/cubit/cheshmakmarg_cubit.dart';
import 'package:hamneshin.games.apps/modules/home/cubit/home_cubit.dart';
import 'package:hamneshin.games.apps/modules/jorat-haghighat/cubit/jorathaghighat_cubit.dart';
import 'package:hamneshin.games.apps/modules/pantomim/cubit/pantomim_cubit.dart';
import 'package:hamneshin.games.apps/modules/shah-dozd/cubit/shah_dozd_cubit.dart';

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
