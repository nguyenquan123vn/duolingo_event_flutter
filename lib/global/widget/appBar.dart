import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import './button.dart';

class CustomedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double _prefferedHeight = 69.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _prefferedHeight,
      color: defaultBrandColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: RichText(
                text: TextSpan(
                  text: 'ｄｕｏｌｉｎｇｏ  ',
                  style: appBarTextStyle,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'ｅｖｅｎｔｓ',
                      style: appBarTextStyleNormal,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Button(
                label: "LOGIN",
                type: "WHITE",
                onPressed: () => Navigator.of(context).pushNamed('/login'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}
