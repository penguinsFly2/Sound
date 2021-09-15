import 'package:flutter/material.dart';
import 'package:sound/Core/widgets/button_landing.dart';


class StarterButtons extends StatelessWidget {
  final double leftMargin;
  const StarterButtons({Key? key, required this.leftMargin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: leftMargin + 35,
          ),
          width: double.infinity,
          height: 48,
          child: ButtonLanding(
            color: Colors.black,
            text: 'Sign up',
          ),
        ),
        Container(
          margin:
              EdgeInsets.symmetric(horizontal: leftMargin + 35,vertical: 25),
          width: double.infinity,
          height: 45,
          child: ButtonLanding(
            color: Colors.transparent,
            text: 'Log in',
          ),
        ),
      ],
    );
  }
}
