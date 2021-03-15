import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:flutter/material.dart';
import '../../global/style.dart';
import 'components/agreeTerms.dart';
import 'components/input.dart';
import 'components/socialLoginBtn.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Center(
          child: Container(
            height: 443.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text("Login", style: headerTextStyle),
                ),
                InputBuilder(label: "Email"),
                InputBuilder(label: "Password"),
                Button(label: "LOGIN", type: "PRIMARY"),
                Button(
                    label: "CREATE ACCOUNT",
                    type: "PRIMARY",
                    onPressed: () => Navigator.of(context).pushNamed('/signUp')),
                SocialLoginButtons(),
                AgreeTermsContainer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
