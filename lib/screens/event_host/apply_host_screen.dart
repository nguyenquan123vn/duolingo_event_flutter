import 'package:flutter/material.dart';
import 'package:duolingo_event_app/models/querry.dart';
import 'components/hostcontroller.dart';

class ApplyHost extends StatefulWidget {
  @override
  _ApplyHostState createState() => _ApplyHostState();
}

class _ApplyHostState extends State<ApplyHost> {
  List<Map<String, Object>> _questions = [
    {
      'question': Querry(
        index: '1',
        text: 'Hi, I\'m Duo! What\'s your full name?',
      ),
      'answer': [Querry(text: 'Sounds good')]
    },
    {
      'question': Querry(
        index: '2',
        text: 'Now it\'s time to get to know you a little more!',
      ),
      'answer': [Querry(text: 'Sounds good')]
    },
    {
      'question': Querry(
        index: 'a',
        text: 'In what language do you plan on hosting your Events?',
      ),
      'answer': [Querry(text: 'English')]
    },
    {
      'question': Querry(
        index: 'b',
        text:
            'How would you rate your listening and speaking proficiency in ___?',
      ),
      'answer': [
        Querry(
          index: 'A',
          text: 'Completely fluent',
        ),
        Querry(
          index: 'B',
          text: 'Intermediate level',
        ),
        Querry(
          index: 'C',
          text: 'Beginner level',
        )
      ],
    },
    {
      'question': Querry(
        index: 'c',
        text: 'How do you expect your attendee proficiency?',
      ),
      'answer': [
        Querry(
          index: 'A',
          text: 'Beginner',
        ),
        Querry(
          index: 'B',
          text: 'Intermediate',
        ),
        Querry(
          index: 'C',
          text: 'Advanced',
        ),
      ]
    },
    {
      'question': Querry(
        index: 'd',
        text: 'What is your maximum attendees?',
      ),
      'answer': [Querry(text: '20')]
    },
    {
      'question': Querry(
        index: 'e',
        text: 'Describe something about your event?',
      ),
      'answer': [Querry(text: 'Teaching stuff')]
    },
    {
      'question': Querry(
        index: '3',
        text:
            'Fantastic! Now we\'d love to learn about the events you have in mind.',
      ),
      'answer': [Querry(text: 'Let\'s go')]
    },
    {
      'question': Querry(
        index: 'a',
        text: 'Would you like to host your events online or in-person?',
      ),
      'answer': [
        Querry(
          index: 'A',
          text: 'Online events',
        ),
        Querry(
          index: 'B',
          text: 'In-person events',
        ),
        Querry(
          index: 'C',
          text: 'Both types of events',
        ),
      ]
    },
    {
      'question': Querry(
        index: 'b',
        text: 'Do you have experience using Zoom video conferencing?',
      ),
      'answer': [
        Querry(
          index: 'A',
          text: 'Yes, I\'m very experienced',
        ),
        Querry(
          index: 'B',
          text:
              'Some, I\'ve used it but I could use some tips and best some practices',
        ),
        Querry(
          index: 'C',
          text: 'No, I\'ve rarely used it',
        ),
      ]
    },
    {
      'question': Querry(
        index: 'c',
        text: 'In what city are you based?',
      ),
      'answer': [Querry(text: 'Hanoi')]
    },
    {
      'question': Querry(
        index: 'd',
        text: 'How soon can you start hosting?',
      ),
      'answer': [
        Querry(
          index: 'A',
          text: 'I\'m ready to begin hosting right away!',
        ),
        Querry(
          index: 'B',
          text: 'In about a week or two',
        ),
        Querry(
          index: 'C',
          text: 'In a month or more',
        ),
      ]
    },
    {
      'question': Querry(
        index: 'e',
        text: 'How frequently will you host events?',
      ),
      'answer': [
        Querry(
          index: 'A',
          text: 'Several times a week',
        ),
        Querry(
          index: 'B',
          text: 'Once a week',
        ),
        Querry(
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
    return Container(
      child: Controller(_answerQuestion, _index, _questions),
    );
  }
}
