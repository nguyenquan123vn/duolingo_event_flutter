import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/widget/button.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Button(label: "FACEBOOK", type: "WHITE"),
        ),
        SizedBox(width: 20.0),
        Expanded(
          child: Button(label: "GOOGLE", type: "WHITE"),
        ),
      ],
    );
  }
}
