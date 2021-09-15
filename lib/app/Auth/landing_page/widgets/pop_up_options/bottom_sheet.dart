import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sound/Core/Style/color_plate.dart';
import 'package:sound/Core/Style/re_d_mo_d_icons.dart';
import 'package:sound/Core/widgets/no_background_button.dart';
import 'package:sound/app/Auth/login/view/login_screen.dart';
import 'package:sound/app/Auth/sign-up/view/sign_up_screen.dart';

import 'button_maker.dart';

void selectMethod(BuildContext context, bool isLogin) {
  String method = isLogin ? 'Log in' : 'Sign up';
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        width: double.infinity,
        color: ColorPlate.offWhite,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 50),
        margin: EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  method,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
              buttonMaker(
                icon: ReDMoD.google,
                text: 'Google',
                backgroundColor: ColorPlate.red,
                onPressed: () async {},
                method: method,
              ),
              buttonMaker(
                icon: ReDMoD.facebook_squared,
                text: 'Facebook',
                backgroundColor: Colors.blue[900]!,
                method: method,
                onPressed: () async {},
              ),
              if (Platform.isIOS)
                buttonMaker(
                  method: method,
                  icon: ReDMoD.apple,
                  text: 'Apple',
                  backgroundColor: Colors.black,
                  onPressed: () {},
                ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'OR',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                height: 50,
                child: NoBackgroundButton(
                  text: '$method with Email',
                  onTap: () => Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (ctx) => isLogin ? LoginScreen() : SignUpScreen(),
                    ),
                  ),
                  icon: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
