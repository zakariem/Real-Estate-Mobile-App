import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    super.key,
    required this.desktop,
    this.tablet,
    this.mobileLarge,
    required this.mobile,
  });

  final Widget desktop;
  final Widget? tablet;
  final Widget? mobileLarge;
  final Widget mobile;

  static const int desktopBreakpoint = 1024;
  static const int tabletBreakpoint = 768;
  static const int mobileLargeBreakpoint = 480;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < desktopBreakpoint &&
      MediaQuery.of(context).size.width >= tabletBreakpoint;

  static bool isMobileLarge(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletBreakpoint &&
      MediaQuery.of(context).size.width >= mobileLargeBreakpoint;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileLargeBreakpoint;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;

    if (width >= desktopBreakpoint) {
      return desktop;
    } else if (width >= tabletBreakpoint) {
      return tablet ?? desktop;
    } else if (width >= mobileLargeBreakpoint) {
      return mobileLarge ?? tablet ?? desktop;
    } else {
      return mobile;
    }
  }
}
