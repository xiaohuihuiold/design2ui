import 'package:design2ui/d2u.dart';

class D2UDesign {
  double ratio;
  double width;

  D2UDesign(this.ratio,this.width);

  D2UDesign.fromDensity(int density, {double widthDp, int widthPx}) {
    this.ratio = density.toDouble() / D2U.defaultDensity.toDouble();
    this.width = widthDp ?? (widthPx.toDouble() / ratio);
  }

  D2UDesign.fromCompare(double dp, int px) {
    this.ratio = px.toDouble() / dp;
    this.width = dp;
  }

  D2UDesign.fromSize({double widthDp, int widthPx}) {
    if (widthDp != null) {
      this.width = widthDp;
    } else if (widthPx != null) {
      this.width = widthPx.toDouble();
    }
    this.ratio = 1.0;
  }

  @override
  String toString() {
    return 'D2U-ratio:$ratio\n'
        'D2U-width:$width';
  }
}
