import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const TextStyle kPlayerTextStyle = TextStyle(
    fontSize: 40, fontWeight: FontWeight.bold, color: Colors.pinkAccent);

const TextStyle kReplayTextStyle = TextStyle(
    fontSize: 30, fontWeight: FontWeight.bold, color: Colors.pinkAccent);

const TextStyle kCardTextStyle = TextStyle(
  fontSize: 60,
);

const Color playedColor = Colors.grey;
const Color unplayedColor = Colors.pinkAccent;

const Icon playerOneIcon = Icon(
  FontAwesomeIcons.times,
  size: 100,
);
const Icon playerTwoIcon = Icon(
  FontAwesomeIcons.circle,
  size: 100,
);
