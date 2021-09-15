import 'package:flutter/material.dart';
import 'package:sound/constants/style.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Reset Password'),
          ),
          body: Builder(
            builder: (context) => SingleChildScrollView(
              child: Form(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.11,
                    vertical: size.height * 0.05,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(
                          'We\'ll send an email to you!',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: TextFormField(
                          validator: (value) {},
                          onSaved: (value) {},
                          decoration: InputDecoration(
                            hintText: "Email",
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: BLACKBUTTONHEIGHT,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Reset',
                            style: Theme.of(context).textTheme.button,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
