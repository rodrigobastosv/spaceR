import 'package:flutter/material.dart';

Color getColorByStatusName(String name) {
  switch (name) {
    case 'To Be Determined':
      return Colors.deepPurple;
    case 'To Be Confirmed':
      return Colors.indigoAccent;
    case 'Go for Launch':
      return Colors.orangeAccent;
    case 'Launch Successful':
      return Colors.green;
    case 'Launch Failure':
      return Colors.red;
    case 'On Hold':
      return Colors.amberAccent;
    case 'Launch in Flight':
      return Colors.blueAccent;
    case 'Launch was a Partial Failure':
      return Colors.yellowAccent;
    default:
      return Colors.white;
  }
}
