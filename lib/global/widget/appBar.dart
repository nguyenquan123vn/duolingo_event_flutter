import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:duolingo_event_app/models/duolingoUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolingo_event_app/global/style.dart';
import './avatar.dart';
import './button.dart';

class DuolingoAppBar extends StatefulWidget implements PreferredSizeWidget {
  final double prefferedHeight = 69.0;
  final Function avatarOnpressed;

  const DuolingoAppBar({
    Key key,
    this.avatarOnpressed,
  }) : super(key: key);

  @override
  _DuolingoAppBarState createState() => _DuolingoAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(prefferedHeight);
}

class _DuolingoAppBarState extends State<DuolingoAppBar> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = context.read<AuthService>();

    return Container(
      height: widget.prefferedHeight,
      color: defaultBrandColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 18.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: InkWell(
                onTap: () => Navigator.of(context).pushNamed('/home'),
                child: RichText(
                  key: Key('Duolingo'),
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
            ),
            InkWell(
              // onTap: () => showDialog(
              //       context: context,
              //       builder: (BuildContext context) => Dialog(
              //           child: Button(
              //               label: 'Logout',
              //               type: 'WHITE',
              //               onPressed: null)),
              //     ),
              onTap: () => widget.avatarOnpressed(),
              child: Avatar(
                key: Key('avatar'),
                url: auth.currentUser.photoURL,
                size: 20.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
