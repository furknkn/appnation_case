
import 'package:appnation_case/core/constants/colors_palette.dart';
import 'package:appnation_case/core/helper/screen_size.dart';
import 'package:flutter/material.dart';

class AppText {
 
 
  static Text s16w500(final String? text,{Color? color,int? maxLines}) {
    return Text(
      text??"",
      style: TextStyle(fontSize: 16.0.px, color: color ?? ColorsPalette.primary,fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
 static Text s16w700( final String? text,{ Color? color,int? maxLines}) {
    return Text(
      text??"",
      style: TextStyle(fontSize: 16.0.px, color: color ?? ColorsPalette.primary,fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
  static Text s16w900( final String? text,{ Color? color,int? maxLines}) {
    return Text(
      text??"",
      style: TextStyle(fontSize: 16.0.px, color: color ?? ColorsPalette.primary,fontWeight: FontWeight.w900,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
  static Text s13w500(final String? text,{Color? color,int? maxLines}) {
    return Text(
      text??"",
      style: TextStyle(fontSize: 13.0.px, color: color ?? ColorsPalette.primary,fontWeight: FontWeight.w500,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
 static Text s13w700( final String? text,{ Color? color,int? maxLines}) {
    return Text(
      text??"",
      style: TextStyle(fontSize: 13.0.px, color: color ?? ColorsPalette.primary,fontWeight: FontWeight.w700,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
  static Text s13w900( final String? text,{ Color? color,int? maxLines}) {
    return Text(
      text??"",
      style: TextStyle(fontSize: 13.0.px, color: color ?? ColorsPalette.primary,fontWeight: FontWeight.w900,
      overflow: TextOverflow.ellipsis,
      ),
    );
  }
  }
 
  
