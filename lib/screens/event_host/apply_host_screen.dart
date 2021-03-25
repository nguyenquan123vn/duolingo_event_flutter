import 'package:flutter/material.dart';
import 'package:duolingo_event_app/models/query.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'components/hostcontroller.dart';

class ApplyHost extends StatefulWidget {
  @override
  _ApplyHostState createState() => _ApplyHostState();
}

class _ApplyHostState extends State<ApplyHost> {
  List<Map<String, Object>> _questions = [
    {
      'question': Query(
          index: 'duolingo',
          text:
              'Welcome! Bienvenue! Willkommen!\nYour Duolingo Events hosting journey takes off from here\nTakes 2 min'),
      'answer': [Query(text: 'Let\'s get started')]
    },
    {
      'question': Query(
        index: '1',
        text: 'Hi, I\'m Duo! What\'s your full name?',
      ),
      'answer': [Query(text: 'OK')]
    },
    {
      'question': Query(
        index: '2',
        text: 'Now it\'s time to get to know you a little more!',
      ),
      'answer': [Query(text: 'Sounds good')]
    },
    {
      'question': Query(
        index: 'a',
        text: 'In what language do you plan on hosting your Events?',
      ),
      'answer': [Query(text: 'OK')]
    },
    {
      'question': Query(
        index: 'b',
        text:
            'How would you rate your listening and speaking proficiency in ___?',
      ),
      'answer': [
        Query(
          index: 'A',
          text: 'Completely fluent',
        ),
        Query(
          index: 'B',
          text: 'Intermediate level',
        ),
        Query(
          index: 'C',
          text: 'Beginner level',
        )
      ],
    },
    {
      'question': Query(
        index: 'c',
        text: 'How do you expect your attendee proficiency?',
      ),
      'answer': [
        Query(
          index: 'A',
          text: 'Beginner',
        ),
        Query(
          index: 'B',
          text: 'Intermediate',
        ),
        Query(
          index: 'C',
          text: 'Advanced',
        ),
      ]
    },
    {
      'question': Query(
        index: 'd',
        text: 'What is your maximum attendees?',
      ),
      'answer': [Query(text: 'OK')]
    },
    {
      'question': Query(
        index: 'e',
        text: 'Describe something about your event?',
      ),
      'answer': [Query(text: 'OK')]
    },
    {
      'question': Query(
        index: '3',
        text:
            'Fantastic! Now we\'d love to learn about the events you have in mind.',
      ),
      'answer': [Query(text: 'Let\'s go')]
    },
    {
      'question': Query(
        index: 'a',
        text: 'Would you like to host your events online or in-person?',
      ),
      'answer': [
        Query(
          index: 'A',
          text: 'Online events',
        ),
        Query(
          index: 'B',
          text: 'In-person events',
        ),
        Query(
          index: 'C',
          text: 'Both types of events',
        ),
      ]
    },
    {
      'question': Query(
        index: 'b',
        text: 'Do you have experience using Zoom video conferencing?',
      ),
      'answer': [
        Query(
          index: 'A',
          text: 'Yes, I\'m very experienced',
        ),
        Query(
          index: 'B',
          text:
              'Some, I\'ve used it but I could use some tips and best some practices',
        ),
        Query(
          index: 'C',
          text: 'No, I\'ve rarely used it',
        ),
      ]
    },
    {
      'question': Query(
        index: 'c',
        text: 'In what city are you based?',
      ),
      'answer': [Query(text: 'OK')]
    },
    {
      'question': Query(
        index: 'd',
        text: 'How soon can you start hosting?',
      ),
      'answer': [
        Query(
          index: 'A',
          text: 'I\'m ready to begin hosting right away!',
        ),
        Query(
          index: 'B',
          text: 'In about a week or two',
        ),
        Query(
          index: 'C',
          text: 'In a month or more',
        ),
      ]
    },
    {
      'question': Query(
        index: 'e',
        text: 'How frequently will you host events?',
      ),
      'answer': [
        Query(
          index: 'A',
          text: 'Several times a week',
        ),
        Query(
          index: 'B',
          text: 'Once a week',
        ),
        Query(
          index: 'C',
          text: 'Few times a month',
        ),
      ]
    },
  ];

  int _index = 0;
  void _answerQuestion() {
    setState(() {
      _index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: themedBackgroundColor,
      child: (_index < _questions.length)
          ? Controller(_answerQuestion, _index, _questions)
          : Container(child: Text('DONE')),
    );
  }
}
