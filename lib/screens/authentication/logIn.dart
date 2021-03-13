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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text("Login", style: headerTextStyle),
              ),
              SizedBox(height: 24.0),
              InputBuilder(label: "Email"),
              SizedBox(height: 24.0),
              InputBuilder(label: "Password"),
              SizedBox(height: 24.0),
              Button(label: "LOGIN", type: "PRIMARY"),
              SizedBox(height: 24.0),
              Button(label: "CREATE ACCOUNT", type: "PRIMARY"),
              SizedBox(height: 24.0),
              SocialLoginButtons(),
              SizedBox(height: 24.0),
              AgreeTermsContainer()
            ],
          ),
        ),
      ),
    );
  }
}


