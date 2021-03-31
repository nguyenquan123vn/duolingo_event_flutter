import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolingo_event_app/global/widget/button.dart';
import 'package:duolingo_event_app/service/authentication_service.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthService auth = context.read<AuthService>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Button(
            icon: Image.asset('assets/icons/facebook.jpg'),
            label: 'FACEBOOK',
            type: 'WHITE',
            onPressed: () {
              //auth.signInWithFacebook();
            },
          ),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Button(
            icon: Image.asset('assets/icons/google.jpg'),
            label: 'GOOGLE',
            type: 'WHITE',
            onPressed: () async {
              await auth.signInWithGoogle();
            },
          ),
        ),
      ],
    );
  }
}
