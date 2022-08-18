import 'package:edema_calc/consts/components.dart';
import 'package:flutter/material.dart';

class SelectedOptions extends ChangeNotifier {
  final int effacement;
  final int midlineShift;
  final int glucose;
  final int previousStroke;
  final int intervention;

  SelectedOptions({
    this.effacement = 0,
    this.midlineShift = 0,
    this.glucose = 0,
    this.previousStroke = 0,
    this.intervention = 0,
  });

  int from(ComponentInput c) {
    switch (c) {
      case ComponentInput.effacement:
        return effacement;
      case ComponentInput.midlineShift:
        return midlineShift;
      case ComponentInput.glucose:
        return glucose;
      case ComponentInput.previousStroke:
        return previousStroke;
      case ComponentInput.intervention:
        return intervention;
    }
  }
}
