import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BooVieLogoWidget extends StatelessWidget {
  const BooVieLogoWidget({
    this.height,
    this.width,
    Key? key,
  }) : super(key: key);

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height ?? 150,
        width: width ?? 150,
        child: SvgPicture.asset(
          'assets/booVie.svg',
          semanticsLabel: 'Boo Vie',
        ),
      );
}
