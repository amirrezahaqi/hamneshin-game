import 'package:flutter/material.dart';
import 'package:flutter_application_new/gen/assets.gen.dart';
import 'package:flutter_application_new/global/utils/constants/app_distances.dart';
import 'package:flutter_application_new/global/utils/constants/ui_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_HelpCard> helpCardsList = [
      _HelpCard(
          imagePath: Assets.images.png.mafia.path,
          title: 'بازی گروهی مافیا',
          onTap: () {}),      _HelpCard(
          imagePath: Assets.images.png.mafia.path,
          title: 'بازی گروهی مافیا',
          onTap: () {}),
      _HelpCard(
          imagePath: Assets.images.png.jasoos.path,
          title: 'بازی گروهی جاسوس',
          onTap: () {}),
      _HelpCard(
          imagePath: Assets.images.png.shahDozdJallad.path,
          title: 'بازی گروهی شاه دزد جلاد',
          onTap: () {}),
      _HelpCard(
          imagePath: Assets.images.png.joratHaghighat.path,
          title: 'بازی گروهی جرعت یا حقیقت',
          onTap: () {}),
      _HelpCard(
          imagePath: Assets.images.png.dor.path,
          title: 'بازی گروهی دور',
          onTap: () {}),
      _HelpCard(
          imagePath: Assets.images.png.pantomim.path,
          title: 'بازی گروهی پانتومیم',
          onTap: () {}),
      _HelpCard(
          imagePath: Assets.images.png.cheshmakMarg.path,
          title: 'بازی گروهی چشمک مرگ',
          onTap: () {}),
    ];
    return Container(
        padding: const EdgeInsets.all(AppDistances.pageBdyMargin),
        width: double.infinity,
        height: double.infinity,
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
        child: ListView.builder(
          itemCount: helpCardsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 4.w),
              child: _HelpCard(
                  imagePath: helpCardsList[index].imagePath,
                  title: helpCardsList[index].title,
                  onTap: helpCardsList[index].onTap),
            );
          },
        )
    );
  }
}

class _HelpCard extends StatelessWidget {
  const _HelpCard(
      {required this.imagePath, required this.title, required this.onTap});
  final String imagePath, title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppDistances.small8),
      decoration: BoxDecoration(
          color: UiColors.lightBlueColor3,
          borderRadius: BorderRadius.circular(2.5.w),
          border: Border.all(color: UiColors.lightBlueColor4),
          boxShadow: const [
            BoxShadow(
                color: UiColors.darkBlueColor5,
                blurRadius: 0,
                offset: Offset(0, 7))
          ]),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 15.w,
            height: 15.w,
          ),
          SizedBox(width: 4.w),
          Text(
            title,
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: UiColors.whiteColor),
          ),
          const Spacer(),
          Icon(
            Icons.arrow_circle_left_outlined,
            color: UiColors.whiteColor,
            size: 6.w,
          )
        ],
      ),
    );
  }
}
