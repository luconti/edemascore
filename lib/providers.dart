import 'package:edema_calc/consts/calculator_input.dart';
import 'package:flutter/material.dart';

enum UrlParameterName {
  feedback,
  patient,
}

extension UrlParameterNameExtension on UrlParameterName {
  // the title that gets displayed in the UI
  String get string {
    switch (this) {
      case UrlParameterName.feedback:
        return "feedback";
      case UrlParameterName.patient:
        return "patient";
    }
  }
}

class UrlParameters extends ChangeNotifier {
  // read-only values from the URL
  final int roEffacement;
  final int roMidlineShift;
  final int roGlucose;
  final int roPreviousStroke;
  final int roIntervention;
  final String? roFeedbackLink;
  final String? roPatientName;

  // dynamic values that get updated when we interact with the calculator
  int effacement;
  int midlineShift;
  int glucose;
  int previousStroke;
  int intervention;
  String? feedbackLink;

  // whether the user update the score
  bool dirty;

  // getters

  // the presence of a feedback link in the URL determines which view to display
  bool get researcherView {
    return feedbackLink == null;
  }

  UrlParameters({
    this.roEffacement = 0,
    this.roMidlineShift = 0,
    this.roGlucose = 0,
    this.roPreviousStroke = 0,
    this.roIntervention = 0,
    this.roFeedbackLink,
    this.effacement = 0,
    this.midlineShift = 0,
    this.glucose = 0,
    this.previousStroke = 0,
    this.intervention = 0,
    this.feedbackLink,
    this.dirty = false,
    this.roPatientName,
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

  int fromOriginal(CalculatorInputValues c) {
    switch (c) {
      case CalculatorInputValues.effacement:
        return roEffacement;
      case CalculatorInputValues.midlineShift:
        return roMidlineShift;
      case CalculatorInputValues.glucose:
        return roGlucose;
      case CalculatorInputValues.previousStroke:
        return roPreviousStroke;
      case CalculatorInputValues.intervention:
        return roIntervention;
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

    // user has updated the score
    dirty = true;

    notifyListeners();
  }

  // reset the options to their original values
  void reset() {
    effacement = roEffacement;
    midlineShift = roMidlineShift;
    glucose = roGlucose;
    previousStroke = roPreviousStroke;
    intervention = roIntervention;

    // score has been reset to its original value
    dirty = false;

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
    String? feedbackLink =
        route.queryParameters[UrlParameterName.feedback.string];
    String? patientName =
        route.queryParameters[UrlParameterName.patient.string];

    // limit the values to valid ranges
    int _effacement = effacementOption > 1
        ? 1
        : effacementOption < 0
            ? 0
            : effacementOption;
    int _midlineShift = midlineShift > 4
        ? 4
        : midlineShift < 0
            ? 0
            : midlineShift;
    int _glucose = glucoseOption > 1
        ? 1
        : glucoseOption < 0
            ? 0
            : glucoseOption;
    int _previousStroke = previousStrokeOption > 1
        ? 1
        : previousStrokeOption < 0
            ? 0
            : previousStrokeOption;
    int _intervention = interventionOption > 1
        ? 1
        : interventionOption < 0
            ? 0
            : interventionOption;

    // return the model
    return UrlParameters(
      roEffacement: _effacement,
      roMidlineShift: _midlineShift,
      roGlucose: _glucose,
      roPreviousStroke: _previousStroke,
      roIntervention: _intervention,
      roFeedbackLink: feedbackLink,
      effacement: _effacement,
      midlineShift: _midlineShift,
      glucose: _glucose,
      previousStroke: _previousStroke,
      intervention: _intervention,
      feedbackLink: feedbackLink,
      roPatientName: patientName,
    );
  }
}
