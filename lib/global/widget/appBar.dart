import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import './avatar.dart';
import './button.dart';

class CustomedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double prefferedHeight = 69.0;
  final bool login;
  final bool
      reference; // Check whether a widget should be able to navigate to a new route

  CustomedAppBar({
    @required this.reference,
    @required this.login,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: prefferedHeight,
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
            if (login)
              if (reference)
                InkWell(
                  child: Avatar(size: 20.0),
                  onTap: () => Navigator.of(context).pushNamed('/host'),
                )
              else
                Avatar(size: 20.0)
            else
              Expanded(
                child: Button(
                  label: "LOGIN",
                  type: "WHITE",
                  onPressed: () => Navigator.of(context).pushNamed('/login'),
                ),
              )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(prefferedHeight);
}
