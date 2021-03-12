import 'package:flutter/material.dart';
import '../../../global/style.dart';

class DropdownBar extends StatefulWidget {
  const DropdownBar({Key key, this.type}) : super(key: key);

  final String type;

  @override
  _DropdownBarState createState() => _DropdownBarState();
}

class _DropdownBarState extends State<DropdownBar> {
  @override
  Widget build(BuildContext context) {
    bool isOptionValues = false;

    List<String> _proficiencies = [
      'ALL LEVELS',
      'BEGINNER',
      'INTERMEDIATE',
      'ADVANCES'
    ];
    List<String> _languages = [
      'ALL LEVELS',
      'VIETNAMESE',
      'ENGLISH',
      'GERMANY'
    ];

    Function showOptionValues = () {
      return setState(() {
        isOptionValues = !isOptionValues;
        if (isOptionValues == true) {
          showDialog(
              context: context,
              builder: (BuildContext context) => Dialog(
                    child: OptionValuesBuilder(
                        optionValues: widget.type == "LANGUAGE"
                            ? _languages
                            : _proficiencies),
                  ));
        }
      });
    };

    return InkWell(
      onTap: () => showOptionValues(),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
            color: defaultBackgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1.0, color: borderColor),
            boxShadow: [defaultShadow]),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.type == "LANGUAGE" ? "ALL LANGUAGES" : "ALL LEVELS",
                  style: defaultBoldTextStyle),
              Icon(Icons.keyboard_arrow_down_rounded, color: iconColor)
            ],
          ),
        ),
      ),
    );
  }
}

class OptionValuesBuilder extends StatelessWidget {
  const OptionValuesBuilder({Key key, this.optionValues}) : super(key: key);

  final List<String> optionValues;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 160.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: defaultBackgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1.0, color: borderColor)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: optionValues.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  height: 37.0,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:
                        Text(optionValues[index], style: defaultBoldTextStyle),
                  ));
            },
          ),
        ));
  }
}
