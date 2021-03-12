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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text("Create your profile", style: headerTextStyle),
              ),
              SizedBox(height: 24.0),
              InputBuilder(label: "Age"),
              SizedBox(height: 24.0),
              InputBuilder(label: "Name"),
              SizedBox(height: 24.0),
              InputBuilder(label: "Email"),
              SizedBox(height: 24.0),
              InputBuilder(label: "Password"),
              SizedBox(height: 24.0),
              Button(label: "CREATE ACCOUNT", type: "PRIMARY"),
              SizedBox(height: 24.0),
              SocialLoginButtons(),
              SizedBox(height: 24.0),
              AgreeTermsContainer(),
            ],
          ),
        ),
      ),
    );
  }
}


