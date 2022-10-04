import 'package:edema_calc/consts/calculator_input.dart';
import 'package:flutter/material.dart';

class UrlParameters extends ChangeNotifier {
  int effacement;
  int midlineShift;
  int glucose;
  int previousStroke;
  int intervention;
  String? feedbackLink;

  UrlParameters({
    this.effacement = 0,
    this.midlineShift = 0,
    this.glucose = 0,
    this.previousStroke = 0,
    this.intervention = 0,
    this.feedbackLink,
  });

  int from(CalculatorInput c) {
    switch (c) {
      case CalculatorInput.effacement:
        return effacement;
      case CalculatorInput.midlineShift:
        return midlineShift;
      case CalculatorInput.glucose:
        return glucose;
      case CalculatorInput.previousStroke:
        return previousStroke;
      case CalculatorInput.intervention:
        return intervention;
    }
  }

  // set the selected option of a component input
  void set(CalculatorInput c, int newOption) {
    switch (c) {
      case CalculatorInput.effacement:
        effacement = newOption;
        break;
      case CalculatorInput.midlineShift:
        midlineShift = newOption;
        break;
      case CalculatorInput.glucose:
        glucose = newOption;
        break;
      case CalculatorInput.previousStroke:
        previousStroke = newOption;
        break;
      case CalculatorInput.intervention:
        intervention = newOption;
        break;
    }

    notifyListeners();
  }

  factory UrlParameters.fromURI(RouteSettings settings) {
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
        toInt[route.queryParameters[CalculatorInput.effacement.param]] ?? 0;
    int glucoseOption =
        toInt[route.queryParameters[CalculatorInput.glucose.param]] ?? 0;
    int previousStrokeOption =
        toInt[route.queryParameters[CalculatorInput.previousStroke.param]] ?? 0;
    int interventionOption =
        toInt[route.queryParameters[CalculatorInput.intervention.param]] ?? 0;
    int midlineShift =
        toInt[route.queryParameters[CalculatorInput.midlineShift.param]] ?? 0;
    String? feedbackLink = route.queryParameters["feedback"];

    return UrlParameters(
      effacement: effacementOption > 1
          ? 1
          : effacementOption < 0
              ? 0
              : effacementOption,
      midlineShift: midlineShift > 4
          ? 4
          : midlineShift < 0
              ? 0
              : midlineShift,
      glucose: glucoseOption > 1
          ? 1
          : glucoseOption < 0
              ? 0
              : glucoseOption,
      previousStroke: previousStrokeOption > 1
          ? 1
          : previousStrokeOption < 0
              ? 0
              : previousStrokeOption,
      intervention: interventionOption > 1
          ? 1
          : interventionOption < 0
              ? 0
              : interventionOption,
      feedbackLink: feedbackLink,
    );
  }
}
