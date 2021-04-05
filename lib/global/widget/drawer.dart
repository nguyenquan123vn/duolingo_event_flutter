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
                      url:
                          'https://s3-alpha-sig.figma.com/img/d800/2b3b/f29d70006d7bfc0cf4c53417befc3bfe?Expires=1618185600&Signature=SUnSqw6s7forrPh8NUz~bjTYS0iikn45l2v74Qvv0SB3cfGZtG1Jel3pEVmqJHMkPJRHefktXeQlotEkB5sIBzmrotCV5Kg3dg1vZw0X0lz~7CKVzcDnxhRkeIq-Ti-oYZ5rvUqymTHUev6xWorzgkAumXbDaaXudMxQtcVzaQNcuK32frYVpBBtflPrFW0FOp9kQBS4RCtHMbuBEg5z6rf0pBsxPxuJC4G2EH25uRAOw8Y~v-NyZdOobm78B5RURonGwp0M15z4accahUf-1-iyRvifrtwLpDzR6p~GMOHupFfmFzchOROxoyTmZQG-Xx18zXJ5KUtJlLPPUO2eQw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                      size: 40.0,
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'USERNAME',
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
