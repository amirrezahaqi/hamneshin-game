import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hamneshin.games.apps/gen/assets.gen.dart';
import 'package:hamneshin.games.apps/gen/fonts.gen.dart';
import 'package:hamneshin.games.apps/global/utils/constants/StringConst.dart';
import 'package:hamneshin.games.apps/global/utils/constants/app_distances.dart';
import 'package:hamneshin.games.apps/global/utils/constants/ui_colors.dart';
import 'package:hamneshin.games.apps/global/widgets/bottom_sheet_body_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HelpView extends StatelessWidget {
  HelpView({super.key});
  final AudioPlayer audioPlayer = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    final List<_HelpCard> helpCardsList = [
      _HelpCard(
          imagePath: Assets.images.png.mafia.path,
          title: 'بازی گروهی مافیا',
          onTap: () async {
            await audioPlayer.play(AssetSource('sounds/buttomSheet.mp3'));
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetBodyWidget(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Image.asset(
                          "assets/images/png/mafia.png",
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.aboutGame,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      const Text(
                        StringConst.mafiaGame,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.pelak,
                            color: UiColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      SizedBox(
                        width: AppDistances.medium16.w * 4,
                        child: const Divider(
                          color: UiColors.whiteColor,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          textAlign: TextAlign.justify,
                          StringConst.mafiaGameInfo,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  )
                ]);
              },
            );
          }),
      _HelpCard(
          imagePath: Assets.images.png.jasoos.path,
          title: 'بازی گروهی جاسوس',
          onTap: () async {
            await audioPlayer.play(AssetSource('sounds/buttomSheet.mp3'));
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetBodyWidget(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Image.asset(
                          "assets/images/png/jasoos.png",
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.aboutGame,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      const Text(
                        StringConst.jasoos,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.pelak,
                            color: UiColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      SizedBox(
                        width: AppDistances.medium16.w * 4,
                        child: const Divider(
                          color: UiColors.whiteColor,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          textAlign: TextAlign.justify,
                          StringConst.jasoosGame,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  )
                ]);
              },
            );
          }),
      _HelpCard(
          imagePath: Assets.images.png.shahDozdJallad.path,
          title: 'بازی گروهی شاه دزد جلاد',
          onTap: () async {
            await audioPlayer.play(AssetSource('sounds/buttomSheet.mp3'));
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetBodyWidget(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Image.asset(
                          "assets/images/png/shah-dozd-jallad.png",
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.aboutGame,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      const Text(
                        StringConst.sdjvGame,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.pelak,
                            color: UiColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      SizedBox(
                        width: AppDistances.medium16.w * 4,
                        child: const Divider(
                          color: UiColors.whiteColor,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          textAlign: TextAlign.justify,
                          StringConst.sdjvGameinfo,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  )
                ]);
              },
            );
          }),
      _HelpCard(
          imagePath: Assets.images.png.joratHaghighat.path,
          title: 'بازی گروهی جرعت یا حقیقت',
          onTap: () async {
            await audioPlayer.play(AssetSource('sounds/buttomSheet.mp3'));
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetBodyWidget(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Image.asset(
                          "assets/images/png/jorat-haghighat.png",
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.aboutGame,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      const Text(
                        StringConst.jorathaghighat,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.pelak,
                            color: UiColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      SizedBox(
                        width: AppDistances.medium16.w * 4,
                        child: const Divider(
                          color: UiColors.whiteColor,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          textAlign: TextAlign.justify,
                          StringConst.jorathaghighatGame,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  )
                ]);
              },
            );
          }),
      _HelpCard(
          imagePath: Assets.images.png.dor.path,
          title: 'بازی گروهی دور',
          onTap: () async {
            await audioPlayer.play(AssetSource('sounds/buttomSheet.mp3'));
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetBodyWidget(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Image.asset(
                          "assets/images/png/dor.png",
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.aboutGame,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      const Text(
                        StringConst.dorehami,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.pelak,
                            color: UiColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      SizedBox(
                        width: AppDistances.medium16.w * 4,
                        child: const Divider(
                          color: UiColors.whiteColor,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          textAlign: TextAlign.justify,
                          StringConst.dorGame,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  )
                ]);
              },
            );
          }),
      _HelpCard(
          imagePath: Assets.images.png.pantomim.path,
          title: 'بازی گروهی پانتومیم',
          onTap: () async {
            await audioPlayer.play(AssetSource('sounds/buttomSheet.mp3'));
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetBodyWidget(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Image.asset(
                          "assets/images/png/pantomim.png",
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.aboutGame,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      const Text(
                        StringConst.pantomimGame,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.pelak,
                            color: UiColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      SizedBox(
                        width: AppDistances.medium16.w * 4,
                        child: const Divider(
                          color: UiColors.whiteColor,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          textAlign: TextAlign.justify,
                          StringConst.pantGame,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  )
                ]);
              },
            );
          }),
      _HelpCard(
          imagePath: Assets.images.png.cheshmakMarg.path,
          title: 'بازی گروهی چشمک مرگ',
          onTap: () async {
            await audioPlayer.play(AssetSource('sounds/buttomSheet.mp3'));
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BottomSheetBodyWidget(children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 50.w,
                        child: Image.asset(
                          "assets/images/png/cheshmak-marg.png",
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: UiColors.lightBlueColor),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            StringConst.aboutGame,
                            style: TextStyle(
                                fontFamily: FontFamily.pelak,
                                color: UiColors.whiteColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4.w,
                      ),
                      const Text(
                        StringConst.cheshmakGame,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: FontFamily.pelak,
                            color: UiColors.whiteColor,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.w,
                      ),
                      SizedBox(
                        width: AppDistances.medium16.w * 4,
                        child: const Divider(
                          color: UiColors.whiteColor,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        height: 2.w,
                      ),
                      SizedBox(
                        width: 90.w,
                        child: const Text(
                          textAlign: TextAlign.justify,
                          StringConst.cheshmakGameInfo,
                          style: TextStyle(
                              height: 1.5,
                              fontFamily: FontFamily.pelak,
                              color: UiColors.whiteColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 10.w,
                      ),
                    ],
                  )
                ]);
              },
            );
          }),
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
        child: Padding(
          padding: const EdgeInsets.only(top: AppDistances.large),
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
          ),
        ));
  }
}

class _HelpCard extends StatelessWidget {
  const _HelpCard(
      {required this.imagePath, required this.title, required this.onTap});
  final String imagePath, title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
