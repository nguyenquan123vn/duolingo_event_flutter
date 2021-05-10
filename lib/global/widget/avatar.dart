import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';

class Avatar extends StatelessWidget {
  final String url;
  final double size;

  const Avatar({
    Key key,
    this.url,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: washTextColor,
      backgroundImage: (url == null)
          ? NetworkImage(
              'https://www.pikpng.com/pngl/m/80-805523_default-avatar-svg-png-icon-free-download-264157.png')
          : NetworkImage(url),
      maxRadius: size,
    );
  }
}
