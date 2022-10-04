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

  int from(CalculatorInputValues c) {
    switch (c) {
      case CalculatorInputValues.effacement:
        return effacement;
      case CalculatorInputValues.midlineShift:
        return midlineShift;
      case CalculatorInputValues.glucose:
        return glucose;
      case CalculatorInputValues.previousStroke:
        return previousStroke;
      case CalculatorInputValues.intervention:
        return intervention;
    }
  }

  // set the selected option of a component input
  void set(CalculatorInputValues c, int newOption) {
    switch (c) {
      case CalculatorInputValues.effacement:
        effacement = newOption;
        break;
      case CalculatorInputValues.midlineShift:
        midlineShift = newOption;
        break;
      case CalculatorInputValues.glucose:
        glucose = newOption;
        break;
      case CalculatorInputValues.previousStroke:
        previousStroke = newOption;
        break;
      case CalculatorInputValues.intervention:
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
        toInt[route.queryParameters[CalculatorInputValues.effacement.param]] ??
            0;
    int glucoseOption =
        toInt[route.queryParameters[CalculatorInputValues.glucose.param]] ?? 0;
    int previousStrokeOption = toInt[route
            .queryParameters[CalculatorInputValues.previousStroke.param]] ??
        0;
    int interventionOption = toInt[
            route.queryParameters[CalculatorInputValues.intervention.param]] ??
        0;
    int midlineShift = toInt[
            route.queryParameters[CalculatorInputValues.midlineShift.param]] ??
        0;
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
