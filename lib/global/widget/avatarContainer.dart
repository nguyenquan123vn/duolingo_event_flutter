import 'package:flutter/material.dart';
import '../../global/style.dart';

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    Key key, this.size,
  }) : super(key: key);

  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            color: iconColor, borderRadius: BorderRadius.circular(50)));
  }
}