import 'package:flutter/material.dart';

import '../../../../../constants/assets.dart';


class StarterLogo extends StatelessWidget {
  final Size size;
  const StarterLogo({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ratioImage = 80;
    return Container(
      margin: EdgeInsets.only(left: size.width * 0.01, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Image.asset('$ASSETSICON/sound.png'),
                height: ratioImage,
                width: ratioImage,
              ),
              Text(
                'Sound',
                style: TextStyle(
                  fontSize: 60,
                  fontFamily: 'Slenco',
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: ratioImage + 10),
            child: Text(
              'Feel The Waves',
              style: TextStyle(fontSize: 18,),
            ),
          ),
        ],
      ),
    );
  }
}
