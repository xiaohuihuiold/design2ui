import 'package:design2ui/d2u_design.dart';
import 'package:flutter/material.dart';

class D2U {
  static int defaultDensity = 160;

  static double designPixelRatio;

  static double ratio;
  static double pixelRatio;
  static double textScale;
  static double screenWidth;
  static double screenHeight;

  static init(BuildContext context) {
    if (context == null) return;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    pixelRatio = mediaQueryData.devicePixelRatio;
    textScale = mediaQueryData.textScaleFactor;
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
  }

  static load(D2UDesign design) {
    designPixelRatio = design.ratio;
    ratio = pixelRatio / designPixelRatio;
  }

  static double d2u({double dp, int px}) {
    if (dp != null) {
      return dp / ratio;
    } else if (px != null) {
      return px / ratio / pixelRatio;
    }
    return 0.0;
  }

  static double d2ut(double sp, {bool scale = false}) {
    return d2u(dp: sp) * (scale ? textScale : 1.0);
  }
}
