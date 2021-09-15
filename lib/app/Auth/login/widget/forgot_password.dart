import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../view/reset_password.dart';

class ForgotPassword extends StatelessWidget {

  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:20),
      child: TextButton(
        onPressed: () {
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (ctx) => ResetPassword(),
                  ),
                );
              },
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14
          ),
        ),
      ),
    );
  }
}
