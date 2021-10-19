import 'importeverything.dart';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample = [
  {
    'id': 1,
    "questions": "stop.jpg",
    "options": ['bye-bye','hello','stop','go ahead'],
    "answer_index": 2,
  },
  {
    'id': 2,
    "questions": "stop.jpg",
    "options": ['bye-bye','hello','stop','go ahead'],
    "answer_index": 2,
  },
  {
    'id': 3,
    "questions": "stop.jpg",
    "options": ['bye-bye','hello','stop','go ahead'],
    "answer_index": 2,
  },
  {
    'id': 4,
    "questions": "stop.jpg",
    "options": ['bye-bye','hello','stop','go ahead'],
    "answer_index": 2,
  },
  {
    'id': 5,
    "questions": "stop.jpg",
    "options": ['bye-bye','hello','stop','go ahead'],
    "answer_index": 2,
  }
];
