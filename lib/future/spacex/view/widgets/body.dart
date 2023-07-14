import 'package:appnation_case/core/constants/colors_palette.dart';
import 'package:appnation_case/core/helper/app_text.dart';
import 'package:appnation_case/core/helper/screen_size.dart';
import 'package:appnation_case/future/spacex/models/spacex.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class HomePageBody extends StatelessWidget {
  late YoutubePlayerController _youtubePlayerController;
  final SpacexResponseModel spacexResponseModel;
  HomePageBody({super.key, required this.spacexResponseModel}) {
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: spacexResponseModel.links!.youtubeId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.0.px),
      decoration: const BoxDecoration(
          color: ColorsPalette.secondaryDark,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.px),
          child: AppText.s16w900(spacexResponseModel.name),
        ),
        16.0.heightPxBox,
        Row(
          children: [
            16.0.widthPxBox,
            AppText.s13w700(
                "Flight no: ${spacexResponseModel.flightNumber.toString()}")
          ],
        ),
        16.0.heightPxBox,
        YoutubePlayer(controller: _youtubePlayerController)
      ]),
    );
  }
}
