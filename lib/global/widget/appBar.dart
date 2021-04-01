import 'package:duolingo_event_app/service/authentication_service.dart';
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
    final user = context.read<DuolingoUser>();

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
            user == null
                ? Expanded(
                    child: Button(
                      label: "LOGIN",
                      type: "WHITE",
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/login'),
                    ),
                  )
                : InkWell(
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
                      url:
                          'https://s3-alpha-sig.figma.com/img/d800/2b3b/f29d70006d7bfc0cf4c53417befc3bfe?Expires=1618185600&Signature=SUnSqw6s7forrPh8NUz~bjTYS0iikn45l2v74Qvv0SB3cfGZtG1Jel3pEVmqJHMkPJRHefktXeQlotEkB5sIBzmrotCV5Kg3dg1vZw0X0lz~7CKVzcDnxhRkeIq-Ti-oYZ5rvUqymTHUev6xWorzgkAumXbDaaXudMxQtcVzaQNcuK32frYVpBBtflPrFW0FOp9kQBS4RCtHMbuBEg5z6rf0pBsxPxuJC4G2EH25uRAOw8Y~v-NyZdOobm78B5RURonGwp0M15z4accahUf-1-iyRvifrtwLpDzR6p~GMOHupFfmFzchOROxoyTmZQG-Xx18zXJ5KUtJlLPPUO2eQw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                      size: 20.0,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}
