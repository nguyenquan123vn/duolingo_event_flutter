import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/provider/eventFilter.dart';
import './dropdownOptions.dart';

class DropdownBar extends StatefulWidget {
  const DropdownBar({
    Key key,
    this.type,
  }) : super(key: key);

  final String type;

  @override
  _DropdownBarState createState() => _DropdownBarState();
}

class _DropdownBarState extends State<DropdownBar> {
  @override
  Widget build(BuildContext context) {
    bool isOptionValues = false;

    Function showOptionValues = (languages, proficiencies) {
      return setState(() {
        isOptionValues = !isOptionValues;
        if (isOptionValues == true) {
          showDialog(
              context: context,
              builder: (BuildContext context) => widget.type == 'LANGUAGE'
                  ? LanguageOptionValues(languageValues: languages)
                  : ProficiencyOptionValues(proficiencyValues: proficiencies));
        }
      });
    };

    EventFilter eventFilter = context.watch<EventFilter>();

    return InkWell(
      onTap: () => showOptionValues(
        eventFilter.languages,
        eventFilter.proficiencies,
      ),
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          color: defaultBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 1.0,
            color: borderColor,
          ),
          boxShadow: [defaultShadow],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                  widget.type == 'LANGUAGE'
                      ? eventFilter.selectedLanguage
                      : eventFilter.selectedProficiency,
                  style: defaultBoldTextStyle),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: iconColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
