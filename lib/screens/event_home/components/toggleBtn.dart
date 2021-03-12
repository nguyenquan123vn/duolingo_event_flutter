import 'package:flutter/material.dart';
import '../../../global/style.dart';

class ToggleBtn extends StatefulWidget {
  const ToggleBtn({
    Key key,
  }) : super(key: key);

  @override
  _ToggleBtnState createState() => _ToggleBtnState();
}

class _ToggleBtnState extends State<ToggleBtn> {
  bool isActived = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        return setState(() {
          isActived = !isActived;
        });
      },
      child: Container(
          height: 39.0,
          width: 63.0,
          decoration: BoxDecoration(
            color: isActived
                ? defaultBrandColor
                : Color.fromRGBO(229, 229, 229, 1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Align(
              alignment:
                  isActived ? Alignment.centerRight : Alignment.centerLeft,
              child: (Container(
                  height: 26.0,
                  width: 26.0,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.circular(50),
                  ))),
            ),
          )),
    );
  }
}
