import 'package:flutter/material.dart';
import 'package:flutter_application_new/global/cubits/navigation_cubit.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:flutter_application_new/global/widgets/app-bar.dart';
import 'package:flutter_application_new/global/widgets/bottom-navigation.dart';
import 'package:flutter_application_new/modules/about/view/about_view.dart';
import 'package:flutter_application_new/modules/help/views/help_view.dart';
import 'package:flutter_application_new/modules/home/view/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              UiColors.darkBlueColor3,
              UiColors.darkBlueColor5,
            ],
          ),
        ),
        child: BlocBuilder<NavigationCubit, int>(
          builder: (context, state) {
            final navCubit = BlocProvider.of<NavigationCubit>(context);
            return Stack(
              children: [
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 35.w, top: 10.w),
                    child: IndexedStack(
                      index: state,
                      children: [
                        const HomeView(),
                        HelpView(),
                        const AboutView(),
                      ],
                    ),
                  ),
                ),

                // navigation
                Positioned(
                    bottom: 4.w,
                    left: 0,
                    right: 0,
                    child: BottomNavigation(
                      onPageChange: (pageIndex) {
                        navCubit.changePage(pageIndex);
                      },
                    )),

                // app bar
                Positioned(
                    top: 4.w,
                    left: 0,
                    right: 0,
                    child:
                        SizedBox(height: 8.h, child: const AppBarWidget())),
              ],
            );
          },
        ),
      ),
    );
  }
}
