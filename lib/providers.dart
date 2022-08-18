import 'package:edema_calc/consts/components.dart';
import 'package:flutter/material.dart';

class SelectedOptions extends ChangeNotifier {
  int effacement;
  int midlineShift;
  int glucose;
  int previousStroke;
  int intervention;

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

  // set the selected option of a component input
  void set(ComponentInput c, int newOption) {
    switch (c) {
      case ComponentInput.effacement:
        effacement = newOption;
        break;
      case ComponentInput.midlineShift:
        midlineShift = newOption;
        break;
      case ComponentInput.glucose:
        glucose = newOption;
        break;
      case ComponentInput.previousStroke:
        previousStroke = newOption;
        break;
      case ComponentInput.intervention:
        intervention = newOption;
        break;
    }

    notifyListeners();
  }

  factory SelectedOptions.fromURI(RouteSettings settings) {
    // map from the URL parameter possible values
    const Map<String, int> toInt = {
      "0": 0,
      "1": 1,
      "2": 2,
      "3": 3,
      "4": 4,
      "5": 5
    };

    final route = Uri.parse(settings.name ?? "/");

    // extract from the URL the preselected option of each component
    int effacementOption =
        toInt[route.queryParameters[ComponentInput.effacement.param]] ?? 0;
    int glucoseOption =
        toInt[route.queryParameters[ComponentInput.glucose.param]] ?? 0;
    int previousStrokeOption =
        toInt[route.queryParameters[ComponentInput.previousStroke.param]] ?? 0;
    int interventionOption =
        toInt[route.queryParameters[ComponentInput.intervention.param]] ?? 0;
    int midlineShift =
        toInt[route.queryParameters[ComponentInput.midlineShift.param]] ?? 0;

    return SelectedOptions(
      effacement: effacementOption > 2 ? 2 : effacementOption,
      midlineShift: midlineShift,
      glucose: glucoseOption > 2 ? 2 : glucoseOption,
      previousStroke: previousStrokeOption > 2 ? 2 : previousStrokeOption,
      intervention: interventionOption > 2 ? 2 : interventionOption,
    );
  }
}
