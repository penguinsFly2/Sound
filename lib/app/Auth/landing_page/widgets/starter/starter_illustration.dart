import 'package:flutter/material.dart';

import '../../../../../constants/assets.dart';


class StarterIllustration extends StatelessWidget {
  final double leftMargin;
  const StarterIllustration({Key? key, required this.leftMargin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: leftMargin + 35,
      ),
      child: Image.asset('$ASSETSICON/landing_ils.png'),
    );
  }
}
