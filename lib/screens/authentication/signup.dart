import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'components/input.dart';
import 'components/socialLogin.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _username = GlobalKey();
  GlobalKey<FormState> _email = GlobalKey();
  GlobalKey<FormState> _password = GlobalKey();

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
                  child: Text(
                    'Create your profile',
                    style: headerTextStyle,
                  ),
                ),
                InputBuilder(
                  label: 'Username',
                  controller: _usernameController,
                  formKey: _username,
                ),
                InputBuilder(
                  label: 'Email',
                  controller: _emailController,
                  formKey: _email,
                ),
                InputBuilder(
                  label: 'Password',
                  controller: _passwordController,
                  formKey: _password,
                ),
                Button(
                  label: 'CREATE ACCOUNT',
                  type: 'PRIMARY',
                  onPressed: () {
                    if (_username.currentState.validate() &&
                        _email.currentState.validate() &&
                        _password.currentState.validate()) {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                      Navigator.of(context).pushReplacementNamed('//');
                    }
                  },
                ),
                SocialLogin(),
                Container(
                  width: 243,
                  child: Text(
                    'By signing in to Duolingo, you agree to our Terms and Privacy Policy.',
                    textAlign: TextAlign.center,
                    style: defaultParaStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
