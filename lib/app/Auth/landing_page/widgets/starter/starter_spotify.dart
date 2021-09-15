import 'package:flutter/material.dart';

import '../../../../../constants/assets.dart';

class StarterSpotify extends StatelessWidget {
  const StarterSpotify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:55),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.50,
      child: Image.asset('$ASSETSICON/rickroll.png'),
    );
  }
}
