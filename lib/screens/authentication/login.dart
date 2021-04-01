import 'package:duolingo_event_app/service/authentication_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'components/input.dart';
import 'components/socialLogin.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _email = GlobalKey();
  GlobalKey<FormState> _password = GlobalKey();

  @override
  Widget build(BuildContext context) {
    AuthService auth = context.read<AuthService>();

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
                    'Login',
                    style: headerTextStyle,
                  ),
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
                  label: 'LOGIN',
                  type: 'PRIMARY',
                  onPressed: () {
                    if (_email.currentState.validate() &&
                        _password.currentState.validate()) {
                      auth.signInWithEmailAndPassword(
                          _emailController.text, _passwordController.text);
                    }
                  },
                ),
                Button(
                  label: 'CREATE ACCOUNT',
                  type: 'PRIMARY',
                  onPressed: () =>
                      Navigator.of(context).pushReplacementNamed('/signup'),
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
