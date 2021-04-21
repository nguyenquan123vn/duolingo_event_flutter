import 'package:duolingo_event_app]provider/eventFilter.dart";
import 'package:duolingo_event_app/screens/event_home/components/dropdownBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

void main() {
    final languageDropdownBar = DropdownBar (type: 'LANGUAGE');
    final proficiencyDropdownBar = DropdownBar (type: 'PROFICIENCY');
    group ('EventFilter', () {
        testWidgets ('Language dropdown bar has an initial label', (WidgetTester tester) async {
      
            await tester.pumpWidget (ChangeNotifierProvider (
            create: (context) => EventFilter(),
            child: MaterialApp (home: Scaffold (body: languageDropdownBar))));

            final initialLabelFinder = find.text ('ALL LANGUAGES');
            expect (initialLabelFinder, findsOneWidget);
        });

        testWidgets ('Proficiency Dropdown Bar has an initial label', (WidgetTester tester) async {
            await tester.pumpWidget (ChangeNotifierProvider (
                create: (context) => EventFilter(),
                child: MaterialApp (home: Scaffold (body: proficiencyDropdownBar))));

            final initialLabelFinder = find.text ('ALL LEVELS');
            expect (initialLabelFinder, findsOneWidget);    
        });
    });
}