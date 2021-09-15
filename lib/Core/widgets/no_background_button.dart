import 'package:flutter/material.dart';

class NoBackgroundButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final Widget icon;
  final double fontSize;

  const NoBackgroundButton(
      {Key? key,
      required this.icon,
      required this.text,
      this.fontSize: 16,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
        onPressed: onTap,
        icon: icon,
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.grey[100]),
            side: MaterialStateProperty.all(
              BorderSide(
                color: Colors.black,
              ),
            )),
        label: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: FontWeight.w600

          ),
        ));
  }
}
