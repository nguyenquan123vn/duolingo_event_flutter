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

    const List<String> _proficiencies = [
      'ALL LEVELS',
      'BEGINNER',
      'INTERMEDIATE',
      'ADVANCES'
    ];

    const Map<String, String> _languages = {
      "All Languages": "any_language",
      "Arabic": "ar",
      "Catalan": "ca",
      "Chinese": "zh",
      "Czech": "cs",
      "Danish": "da",
      "Dutch": "nl-NL",
      "English": "en",
      "Esperanto": "eo",
      "Finnish": "fi",
      "French": "fr",
      "German": "de",
      "Greek": "el",
      "Guarani": "gn",
      "Hawaiian": "hw",
      "Hebrew": "he",
      "High": "hv",
      "Hindi": "hi",
      "Hungarian": "hu",
      "Indonesian": "id",
      "Irish": "ga",
      "Italian": "it",
      "Japanese": "ja",
      "Klingon": "tlh",
      "Korean": "ko",
      "Latin": "la",
      "Navajo": "nv",
      "Norwegian (Bokmål)": "no-BO",
      "Polish": "pl",
      "Portuguese": "pt",
      "Romanian": "ro",
      "Russian": "ru",
      "Scottish": "gd",
      "Spanish": "es",
      "Swahili": "sw",
      "Swedish": "sv",
      "Turkish": "tr",
      "Ukrainian": "uk",
      "Vietnamese": "vi",
      "Welsh": "cy",
    };

    Function showOptionValues = () {
      return setState(() {
        isOptionValues = !isOptionValues;
        if (isOptionValues == true) {
          showDialog(
              context: context,
              builder: (BuildContext context) => widget.type == "LANGUAGE"
                  ? LanguageOptionValues(languageValues: _languages)
                  : ProficiencyOptionValues(proficiencyValues: _proficiencies));
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

class LanguageOptionValues extends StatefulWidget {
  const LanguageOptionValues({Key key, this.languageValues}) : super(key: key);

  final Map<String, String> languageValues;

  @override
  _LanguageOptionValuesState createState() => _LanguageOptionValuesState();
}

class _LanguageOptionValuesState extends State<LanguageOptionValues> {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 320.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: ListView.builder(
              itemCount: widget.languageValues.length,
              itemBuilder: (BuildContext context, int index) {
                String languageLabel = widget.languageValues.keys.elementAt(index);
                return OptionValuesContainer(
                    label: languageLabel, type: "LANGUAGE");
              },
            ),
          )),
    );
  }
}

class ProficiencyOptionValues extends StatelessWidget {
  const ProficiencyOptionValues({Key key, this.proficiencyValues})
      : super(key: key);

  final List<String> proficiencyValues;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 240.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var level in proficiencyValues)
                  OptionValuesContainer(label: level, type: "PROFICIENCY")
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
    this.type, this.onPressed,
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

