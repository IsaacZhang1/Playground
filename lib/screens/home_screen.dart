import 'package:flutter/material.dart';
import 'package:freshcut_app/assets/sections/check_back_section.dart';
import 'package:freshcut_app/assets/sections/header_text.dart';
import 'package:freshcut_app/widgets/vertical_padding.dart';
import 'package:freshcut_app/assets/sections/video_category_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: HomeScreenView(),
    );
  }
}

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalPadding(byFactorOf: 3),
          // If there was more content/if it was server driven, I would've opted to use ListView.builder
          Expanded(
            child: ListView(children: [
              const HeaderView(),
              const VideoCategoryBanner(
                bannerAsset: 'lib/assets/images/FirstBanner.png',
                bannerText: 'Smash Stockpile',
                newVideoCount: 10,
                videoCountHighlighted: true,
                watchCountWatched: 15,
                watchCountTotal: 30,
                watchCountHighlighted: false,
                progressIndicator: 'lib/assets/images/ProgressIndicatorHalf.png',
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  const VideoCategoryBanner(
                    bannerAsset: 'lib/assets/images/SecondBanner.png',
                    bannerText: 'FGC Rumble',
                    newVideoCount: 18,
                    videoCountHighlighted: true,
                    watchCountWatched: 0,
                    watchCountTotal: 18,
                    watchCountHighlighted: true,
                    progressIndicator: 'lib/assets/images/ProgressIndicatorHalf.png',
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: screenWidth / 5.5),
                    child: Image.asset(
                      'lib/assets/images/HomeTabBar.png',
                    ),
                  ),
                ],
              ),
              const VideoCategoryBanner(
                bannerAsset: 'lib/assets/images/ThirdBanner.png',
                bannerText: 'Valorant Volume',
                newVideoCount: 21,
                videoCountHighlighted: false,
                watchCountWatched: 21,
                watchCountTotal: 21,
                watchCountHighlighted: false,
                progressIndicator: 'lib/assets/images/ProgressIndicatorHalf.png',
              ),
              Image.asset(
                'lib/assets/images/CheckmarkBadge.png',
                fit: BoxFit.scaleDown,
                scale: 1.75,
              ),
              const CheckBackSection(),
              Image.asset(
                'lib/assets/images/DiscordButton.png',
                fit: BoxFit.contain,
              ),
              const VerticalPadding(byFactorOf: 5),
            ]),
          ),
        ],
      ),
    );
  }
}

class HeaderView extends StatelessWidget {
  const HeaderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        HeaderText(text: 'Trending Today 🔥'),
        VerticalPadding(byFactorOf: 2.25),
      ],
    );
  }
}
