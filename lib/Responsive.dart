import 'package:flutter/widgets.dart';

class Responsive {
  static double width(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double height(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getWidth(BuildContext context, double percentage) {
    return width(context) * (percentage / 100);
  }

  static double getHeight(BuildContext context, double percentage) {
    return height(context) * (percentage / 100);
  }

  static bool isMobile(BuildContext context) {
    return width(context) < 600;
  }

  static bool isTablet(BuildContext context) {
    return width(context) >= 600 && width(context) < 1200;
  }

  static bool isDesktop(BuildContext context) {
    return width(context) >= 1200;
  }

  static double fontSize(BuildContext context, double baseSize) {
    if (isMobile(context)) {
      return baseSize;
    } else if (isTablet(context)) {
      return baseSize * 1.2;
    } else {
      return baseSize * 1.4;
    }
  }

  static EdgeInsets padding(BuildContext context) {
    if (isMobile(context)) {
      return const EdgeInsets.all(16.0);
    } else if (isTablet(context)) {
      return const EdgeInsets.all(24.0);
    } else {
      return const EdgeInsets.all(32.0);
    }
  }
}
