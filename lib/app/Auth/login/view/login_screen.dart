import 'package:flutter/material.dart';
import 'package:sound/Core/widgets/cypher_progress_indicator.dart';
import 'package:sound/constants/style.dart';

import '../widget/forgot_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Log in'),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: width * 0.11),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Welcome back!',
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
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
                Container(margin: EdgeInsets.only(top:40),child: CypherProgressIndicator()),
                // Container(
                //   margin: EdgeInsets.only(top: 40),
                //   height: BLACKBUTTONHEIGHT,
                //   width: double.infinity,
                //   child: ElevatedButton(
                //     onPressed: () {},
                //     child: Text(
                //       'Log in',
                //       style: Theme.of(context).textTheme.button,
                //     ),
                //   ),
                // ),
                ForgotPassword(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
