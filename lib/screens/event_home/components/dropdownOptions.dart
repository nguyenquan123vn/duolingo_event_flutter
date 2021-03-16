import 'package:duolingo_event_app/provider/eventFilter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../global/style.dart';

class LanguageOptionValues extends StatefulWidget {
  const LanguageOptionValues({Key key, this.languageValues}) : super(key: key);

  final Map<String, String> languageValues;

  @override
  _LanguageOptionValuesState createState() => _LanguageOptionValuesState();
}

class _LanguageOptionValuesState extends State<LanguageOptionValues> {
  @override
  Widget build(BuildContext context) {

    EventFilter eventFilter = context.read<EventFilter>();

    return Dialog(
      child: Container(
          height: 320.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: ListView.builder(
              itemCount: widget.languageValues.length,
              itemBuilder: (BuildContext context, int index) {
                String languageLabel =
                    widget.languageValues.keys.elementAt(index);
                return OptionValuesContainer(
                    label: languageLabel.toUpperCase(),
                    type: "LANGUAGE",
                    onPressed: () {
                      eventFilter.selectLanguage(languageLabel.toUpperCase());
                      Navigator.of(context, rootNavigator: true).pop('/');
                    });
              },
            ),
          )),
    );
  }
}

class ProficiencyOptionValues extends StatefulWidget {
  const ProficiencyOptionValues({Key key, this.proficiencyValues})
      : super(key: key);

  final List<String> proficiencyValues;

  @override
  _ProficiencyOptionValuesState createState() =>
      _ProficiencyOptionValuesState();
}

class _ProficiencyOptionValuesState extends State<ProficiencyOptionValues> {
  @override
  Widget build(BuildContext context) {
    EventFilter eventFilter = context.read<EventFilter>();

    return Dialog(
      child: Container(
          height: 240.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var level in widget.proficiencyValues)
                  OptionValuesContainer(
                      label: level,
                      type: "PROFICIENCY",
                      onPressed: () {
                        eventFilter.selectProficiency(level);
                        Navigator.of(context, rootNavigator: true).pop('/');
                      })
              ],
            ),
          )),
    );
  }
}

class OptionValuesContainer extends StatelessWidget {
  const OptionValuesContainer({
    Key key,
    @required this.label,
    this.type,
    this.onPressed,
  }) : super(key: key);

  final String label;
  final String type;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
        child: Container(
            height: 37.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: borderColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(label, style: defaultBoldWashTextStyle),
            )),
      ),
    );
  }
}