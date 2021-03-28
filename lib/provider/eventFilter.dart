import 'package:flutter/cupertino.dart';

class EventFilter extends ChangeNotifier {
  List<String> _proficiencies = [
    'ALL LEVELS',
    'BEGINNER',
    'INTERMEDIATE',
    'ADVANCED'
  ];

  Map<String, String> _languages = {
    'All Languages': 'any_language',
    'Arabic': 'ar',
    'Catalan': 'ca',
    'Chinese': 'zh',
    'Czech': 'cs',
    'Danish': 'da',
    'Dutch': 'nl-NL',
    'English': 'en',
    'Esperanto': 'eo',
    'Finnish': 'fi',
    'French': 'fr',
    'German': 'de',
    'Greek': 'el',
    'Guarani': 'gn',
    'Hawaiian': 'hw',
    'Hebrew': 'he',
    'High': 'hv',
    'Hindi': 'hi',
    'Hungarian': 'hu',
    'Indonesian': 'id',
    'Irish': 'ga',
    'Italian': 'it',
    'Japanese': 'ja',
    'Klingon': 'tlh',
    'Korean': 'ko',
    'Latin': 'la',
    'Navajo': 'nv',
    'Norwegian (Bokmål)': 'no-BO',
    'Polish': 'pl',
    'Portuguese': 'pt',
    'Romanian': 'ro',
    'Russian': 'ru',
    'Scottish': 'gd',
    'Spanish': 'es',
    'Swahili': 'sw',
    'Swedish': 'sv',
    'Turkish': 'tr',
    'Ukrainian': 'uk',
    'Vietnamese': 'vi',
    'Welsh': 'cy',
  };

  String _selectedLanguage = 'ALL LANGUAGES';
  String _selectedLanguageId = 'any_language';
  String _selectedProficiency = 'ALL LEVELS';
  bool _isAvailable = false;

  Map<String, String> get languages => _languages;
  List<String> get proficiencies => _proficiencies;
  String get selectedLanguage => _selectedLanguage;
  String get selectedLanguageId => _selectedLanguageId;
  String get selectedProficiency => _selectedProficiency;
  bool get isAvailable => _isAvailable;

  void selectLanguage(String language) {
    _selectedLanguage = language;
    _selectedLanguageId = _languages[language];
    notifyListeners();
  }

  void selectProficiency(String proficiency) {
    _selectedProficiency = proficiency;
    notifyListeners();
  }

  void selectAvailable() {
    _isAvailable = !_isAvailable;
    notifyListeners();
  }
}
