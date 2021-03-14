import 'package:flutter/material.dart';
import '../../global/style.dart';
import 'components/input.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'components/agreeTerms.dart';
import 'components/socialLoginBtn.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Center(
          child: Container(
            height: 530.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text("Create your profile", style: headerTextStyle),
                ),
                InputBuilder(label: "Age"),
                InputBuilder(label: "Name"),
                InputBuilder(label: "Email"),
                InputBuilder(label: "Password"),
                Button(label: "CREATE ACCOUNT", type: "PRIMARY"),
                SocialLoginButtons(),
                AgreeTermsContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


