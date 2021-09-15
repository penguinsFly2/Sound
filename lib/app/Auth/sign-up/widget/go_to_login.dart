import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../landing_page/widgets/pop_up_options/bottom_sheet.dart';


class GoToLogin extends StatelessWidget {
  const GoToLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextButton(
        onPressed: () => selectMethod(context, true),
        child: Text(
          'Already have an account?',
          style: TextStyle(
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
