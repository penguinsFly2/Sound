import 'package:flutter/material.dart';

import '../../app/Auth/landing_page/widgets/pop_up_options/bottom_sheet.dart';
import 'no_background_button.dart';

class ButtonLanding extends StatelessWidget {
  final String text;
  final Color? color;
  const ButtonLanding({
    Key? key,
    this.text: '',
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text == 'Log in') {
      return NoBackgroundButton(
        text: text,
        onTap: () => selectMethod(context, true),
        icon: Container(),
      );
    }
    return ElevatedButton(
      onPressed: () => selectMethod(context, false),
      child: Text(
        text,
        style: Theme.of(context).textTheme.button,
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          color,
        ),
      ),
    );
  }
}
