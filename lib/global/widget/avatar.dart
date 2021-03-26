import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
    this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: washTextColor,
      maxRadius: size,
    );
  }
}
