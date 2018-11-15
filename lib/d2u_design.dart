import 'package:design2ui/d2u.dart';

class D2UDesign {
  double ratio;

  D2UDesign(this.ratio);

  D2UDesign.fromDensity(int density) {
    this.ratio = density.toDouble() / D2U.defaultDensity.toDouble();
  }

  D2UDesign.fromCompare(double dp, int px) {
    this.ratio = px.toDouble() / dp;
  }

  D2UDesign.fromSize({int widthPx, int heightPx}) {
    if (widthPx != null) {
      this.ratio = D2U.screenWidth * D2U.pixelRatio / widthPx.toDouble();
    } else if (heightPx != null) {
      this.ratio = D2U.screenHeight * D2U.pixelRatio / heightPx.toDouble();
    }
  }

  @override
  String toString() {
    return 'D2U-ratio:$ratio';
  }
}
