import 'package:flutter/material.dart';

import '../../../../constants/style.dart';
import '../widget/go_to_login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: width * 0.11),
        child: Form(
          child: Column(
            children: [
              Text(
                'Welcome to Sound!',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                height: BLACKBUTTONHEIGHT,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.button,
                  ),
                ),
              ),
              GoToLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
