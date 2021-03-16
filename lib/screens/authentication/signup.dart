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
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _signUpKey1 = GlobalKey<FormState>();
  final _signUpKey2 = GlobalKey<FormState>();
  final _signUpKey3 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Center(
          child: Container(
            height: 460.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text("Create your profile", style: headerTextStyle),
                ),
                InputBuilder(
                    label: "Username",
                    controller: _usernameController,
                    formKey: _signUpKey1),
                InputBuilder(
                    label: "Email",
                    controller: _emailController,
                    formKey: _signUpKey2),
                InputBuilder(
                    label: "Password",
                    controller: _passwordController,
                    formKey: _signUpKey3),
                Button(
                    label: "CREATE ACCOUNT",
                    type: "PRIMARY",
                    onPressed: () {
                      if (_signUpKey1.currentState.validate() ||
                          _signUpKey2.currentState.validate() ||
                          _signUpKey3.currentState.validate()) {
                        print("SUCCESS!!");
                      }
                    }),
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
