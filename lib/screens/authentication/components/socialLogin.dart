import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/widget/button.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Button(
            label: 'FACEBOOK',
            type: 'WHITE',
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).pushReplacementNamed('//');
            },
          ),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Button(
            label: 'GOOGLE',
            type: 'WHITE',
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
              Navigator.of(context).pushReplacementNamed('//');
            },
          ),
        ),
      ],
    );
  }
}
