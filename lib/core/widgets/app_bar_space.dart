import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sempl/core/config/theme.dart';

/// flexibale space for app bar
class AppBarSpace extends StatelessWidget {
  const AppBarSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          child: SvgPicture.asset(AppImage.icOrange),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: SvgPicture.asset(AppImage.icPurple),
        ),
        Positioned(
          top: 40,
          child: SvgPicture.asset(AppImage.icGreen),
        ),
        Positioned(
          top: 60,
          right: 0,
          left: 0,
          child: SvgPicture.asset(AppImage.icSempl),
        ),
      ],
    );
  }
}
