import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'components/agreeTerms.dart';
import 'components/input.dart';
import 'components/socialLoginBtn.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _logInKey1 = GlobalKey<FormState>();
  final _logInKey2 = GlobalKey<FormState>();

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
                  child: Text(
                    "Login",
                    style: headerTextStyle,
                  ),
                ),
                InputBuilder(
                  label: "Email",
                  controller: _emailController,
                  formKey: _logInKey1,
                ),
                InputBuilder(
                  label: "Password",
                  controller: _passwordController,
                  formKey: _logInKey2,
                ),
                Button(
                  label: "LOGIN",
                  type: "PRIMARY",
                  onPressed: signIn,
                ),
                Button(
                  label: "CREATE ACCOUNT",
                  type: "PRIMARY",
                  onPressed: () => Navigator.of(context).pushNamed('/signup'),
                ),
                SocialLoginButtons(),
                AgreeTermsContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> signIn() async {
    if (_logInKey1.currentState.validate() &&
        _logInKey2.currentState.validate()) {
      try {
        FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
      } catch (e) {
        print("Logged in.");
      }
    } else {
      print("Havent logged in.");
    }
  }
}
