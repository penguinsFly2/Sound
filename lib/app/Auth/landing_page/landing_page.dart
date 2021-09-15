import 'package:flutter/material.dart';

import 'widgets/starter/starter.dart';



class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final leftMargin = size.width * 0.01;
    return Container(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StarterLogo(size: size),
            StarterIllustration(leftMargin: leftMargin),
            StarterButtons(leftMargin: leftMargin),
            StarterSpotify(),
          ],
        ),
      ),
    );
  }
}
