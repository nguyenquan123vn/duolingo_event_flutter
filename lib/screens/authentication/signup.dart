import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:duolingo_event_app/service/data_services/data_service.dart';
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
    AuthService auth = context.read<AuthService>();
    DataService data = context.read<DataService>();

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
                      auth.createUserWithEmailAndPassword(
                          _emailController.text, _passwordController.text);
                      data.createUserInDatabaseWithEmail(auth.currentUser);
                      print('OK');
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
