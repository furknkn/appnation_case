
import 'package:appnation_case/core/constants/application_constants.dart';
import 'package:appnation_case/core/constants/colors_palette.dart';
import 'package:appnation_case/core/helper/screen_size.dart';
import 'package:appnation_case/future/spacex/models/patch.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatefulWidget {
  
  final Patch? patch;
  const CustomSliverAppBar({super.key, this.patch});

  @override
  State<CustomSliverAppBar> createState() => _CustomSliverAppBarState();
}

class _CustomSliverAppBarState extends State<CustomSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return    SliverAppBar(
      
            expandedHeight: 300.0.px,
            backgroundColor: ColorsPalette.secondary,
         
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
            
              background: CachedNetworkImage(imageUrl: widget.patch?.large??ApplicationConstants.emptyLogo),
            ),
          );
  }
}