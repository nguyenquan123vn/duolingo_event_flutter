import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';

class AgreeTermsContainer extends StatelessWidget {
  const AgreeTermsContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _statement =
        "By signing in to Duolingo, you agree to our Terms and Privacy Policy.";

    return Center(
      child: Container(
        width: 243.0,
        child: Text(
          _statement,
          textAlign: TextAlign.center,
          style: defaultParaStyle,
        ),
      ),
    );
  }
}
