import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import './button.dart';
import 'avatar.dart';
import 'package:duolingo_event_app/service/authentication/authentication_service.dart';
import 'package:provider/provider.dart';

class DuolingoDrawer extends StatefulWidget implements PreferredSizeWidget {
  const DuolingoDrawer({
    Key key,
  }) : super(key: key);

  @override
  _DuolingoDrawerState createState() => _DuolingoDrawerState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _DuolingoDrawerState extends State<DuolingoDrawer> {
  @override
  Widget build(BuildContext context) {
    final auth = context.read<AuthService>();

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Column(
                  children: <Widget>[
                    Avatar(
                      url: auth.currentUser.photoURL,
                      size: 40.0,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      auth.currentUser.displayName != null
                          ? auth.currentUser.displayName
                          : 'Username',
                      style: primaryBtnTextStyle,
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: defaultBrandColor,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)))),
            SizedBox(height: 8.0),
            Button(
              label: 'Settings',
              type: 'PRIMARY',
              onPressed: () {},
            ),
            SizedBox(height: 16.0),
            Button(
                label: 'Logout',
                type: 'PRIMARY',
                onPressed: () => auth.signOut()),
          ],
        ),
      ),
    );
  }
}
