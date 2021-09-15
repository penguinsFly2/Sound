import 'package:flutter/material.dart';

Widget buttonMaker({
  required Color backgroundColor,
  required Function() onPressed,
  required IconData icon,
  required String text,
  String method: 'signup',
}) {
  final bAndW = backgroundColor == Colors.white ? Colors.black : Colors.white;
  TextStyle textStyle =
      TextStyle(color: bAndW, fontWeight: FontWeight.bold, fontSize: 15);
  return Container(
    height: 50,
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    child: ElevatedButton.icon(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(13)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: Colors.grey[350]!,
            width: 0.5,
          ),
        )),
        backgroundColor: MaterialStateProperty.all(backgroundColor),
      ),
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: bAndW,
      ),
      label: Text(
        '$method with $text',
        style: textStyle,
      ),
    ),
  );
}
