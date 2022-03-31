import 'package:flutter/material.dart';
import 'package:freshcut_app/widgets/horizontal_padding.dart';
import 'package:freshcut_app/widgets/horizontal_stretch.dart';
import 'package:freshcut_app/widgets/vertical_padding.dart';

class VideoCategoryBanner extends StatelessWidget {
  final String bannerAsset;
  final String bannerText;
  final int newVideoCount;
  final bool videoCountHighlighted;
  final int watchCountWatched;
  final int watchCountTotal;
  final bool watchCountHighlighted;
  final String progressIndicator;

  const VideoCategoryBanner({
    Key? key,
    required this.bannerAsset,
    required this.bannerText,
    required this.newVideoCount,
    required this.videoCountHighlighted,
    required this.watchCountWatched,
    required this.watchCountTotal,
    required this.watchCountHighlighted,
    required this.progressIndicator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    final watchedCountColor =
        watchCountHighlighted ? const Color.fromRGBO(242, 188, 61, 1) : const Color.fromRGBO(140, 135, 151, 1);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: AspectRatio(
        aspectRatio: 345 / 403,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            gradient: const RadialGradient(
              colors: [
                Color.fromRGBO(242, 188, 61, 0.3),
                Color.fromRGBO(242, 188, 61, 0),
              ],
              radius: 1.0,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      bannerAsset,
                    ),
                    const VerticalPadding(byFactorOf: 2.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0),
                      child: Text(
                        bannerText,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12.0, top: 2.0),
                      child: Text(
                        '+$newVideoCount New Videos',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: videoCountHighlighted
                              ? const Color.fromRGBO(242, 188, 61, 1)
                              : const Color.fromRGBO(100, 95, 109, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: screenWidth / 1.35,
                left: screenWidth / 1.51,
                child: SizedBox(
                  height: 120,
                  width: 120,
                  child: Image.asset(
                    'lib/assets/images/PlayButton.png',
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 3.0),
                          child: Image.asset(
                            'lib/assets/images/Eye.png',
                            color: watchedCountColor,
                            scale: 1.6,
                          ),
                        ),
                        Text(
                          '$watchCountWatched/$watchCountTotal',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: watchedCountColor,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      progressIndicator,
                      scale: 330 / screenWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
