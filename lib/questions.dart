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
    "questions": "cross-road.jpg",
    "options": ['Do not cross road','Cross-road','Stop','Go ahead'],
    "answer_index": 1,
  },
  {
    'id': 2,
    "questions": "cycle-crossing.jpg",
    "options": ['Cycle Lane','No Cycling','Cycle Crossing','None'],
    "answer_index": 2,
  },
  {
    'id': 3,
    "questions": "falling-rocks.jpg",
    "options": ['Mountain Ahead','Falling Rocks','Speedbrake Ahead','Pebbles on the Road'],
    "answer_index": 1,
  },
  {
    'id': 4,
    "questions": "give-way.jpg",
    "options": ['Give Way','Overtake','Stay Behind','Slow down'],
    "answer_index": 0,
  },
  {
    'id': 5,
    "questions": "guarded-level-crossing.jpg",
    "options": ['Level crossing','Meter Crossing','Guarded crossing','Guarded level crossing'],
    "answer_index": 3,
  },
  {
    'id': 6,
    "questions": "horn-prohibited.jpg",
    "options": ['Horn prohibited','Blow horn','Horn please','Horn permitted'],
    "answer_index": 0,
  },
  {
    'id': 7,
    "questions": "left-hair-pin-band.jpg",
    "options": ['Right hair pin band','Pin band','Left hair pin band','None'],
    "answer_index": 2,
  },
  {
    'id': 8,
    "questions": "left-hand-curve.jpg",
    "options": ['Left hand curve','Right hand curve','Left turn','Right turn'],
    "answer_index": 0,
  },
  {
    'id': 9,
    "questions": "left-reverse-band.jpg",
    "options": ['N-shaped road','Left reverse band','Double turn ahead','N-shape band'],
    "answer_index": 1,
  },
  {
    'id': 10,
    "questions": "left-turn-prohibited.jpg",
    "options": ['Right curve prohibited','Left curve prohibited','Right turn prohibited','Left turn prohibited'],
    "answer_index": 3,
  },
  {
    'id': 11,
    "questions": "loose-gravel.jpg",
    "options": ['Loose gravel','Men at work','Loose road','Construcion ahead'],
    "answer_index": 0,
  },
  {
    'id': 12,
    "questions": "men-at-work.jpg",
    "options": ['Construction ahead','Men at work','Labours nearby','Danger ahead'],
    "answer_index": 1,
  },
  {
    'id': 13,
    "questions": "narrow-bridge.jpg",
    "options": ['Narrow road','One way','Narrow Bridge','Guarded level crossing'],
    "answer_index": 2,
  },
  {
    'id': 14,
    "questions": "narrow-road-ahead.jpg",
    "options": ['One way','Narrow bridge','Narrow road ahead','Wide road ahead'],
    "answer_index": 2,
  },
  {
    'id': 15,
    "questions": "no-entry.jpg",
    "options": ['No entry','Entry permitted','No parking','Prohibited area'],
    "answer_index": 0,
  },
  {
    'id': 16,
    "questions": "no-parking.jpg",
    "options": ['Parking zone','No Parking','No Car','Cycle prohibited'],
    "answer_index": 1,
  },
  {
    'id': 17,
    "questions": "one-way.jpg",
    "options": ['One way','Single lane','Two way','Double lane'],
    "answer_index": 0,
  },
  {
    'id': 18,
    "questions": "overtaking-prohibited.jpg",
    "options": ['Overtaking prohibited','Crossing prohibited','Two way','Double lane'],
    "answer_index": 0,
  },
  {
    'id': 19,
    "questions": "pedestrian-crossing.jpg",
    "options": ['Level crossing','Vehicle crossing','No crossing','Pedestrian crossing'],
    "answer_index": 3,
  },
  {
    'id': 20,
    "questions": "road-widens-ahead.jpg",
    "options": ['Road narrow ahead','Road widens ahead','Narrow road','Wide road'],
    "answer_index": 1,
  },
  {
    'id': 21,
    "questions": "school-ahead.jpg",
    "options": ['Building ahead','Hospital ahead','School ahead','Panchayat ahead'],
    "answer_index": 2,
  },
  {
    'id': 22,
    "questions": "slippery-road.jpg",
    "options": ['Oily road','Slipper road','Muddy road','Gravel road'],
    "answer_index": 1,
  },
  {
    'id': 23,
    "questions": "speed-limit.jpg",
    "options": ['Speed brake','Speed up','Speed limit','Limit 60'],
    "answer_index": 2,
  },
  {
    'id': 24,
    "questions": "steep-ascent.jpg",
    "options": ['Steep ascent','High road','Upwards road','Angled road'],
    "answer_index": 0,
  },
  {
    'id': 25,
    "questions": "stop.jpg",
    "options": ['Stop','Steep','Crossing','Go ahead'],
    "answer_index": 0,
  },
  {
    'id': 26,
    "questions": "u-turn-prohibited.jpg",
    "options": ['Go straight','Right turn','U turn prohibited','Reverse prohibited'],
    "answer_index": 2,
  },
  {
    'id': 27,
    "questions": "y-intersection.jpg",
    "options": ['Three roads','Y intersection','V intersection','Three way roads'],
    "answer_index": 1,
  },
  {
    'id': 28,
    "questions": "vehicles-prohibited-in-both-directions.jpg",
    "options": ['No vehicle','Vehicle prohibited both ways','Vehicles permitted','None'],
    "answer_index": 1,
  },
  {
    'id': 29,
    "questions": "right-turn-prohibited.jpg",
    "options": ['Right curve prohibited','Left curve prohibited','Right turn prohibited','Left turn prohibited'],
    "answer_index": 2,
  },
  {
    'id': 30,
    "questions": "right-hair-pin-band.jpg",
    "options": ['Right hair pin band','Pin band','Left hair pin band','None'],
    "answer_index": 0,
  },


];
