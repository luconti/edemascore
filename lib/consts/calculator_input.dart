class CalculatorInputOptions {
  final String title;
  final int score;

  CalculatorInputOptions({required this.title, required this.score});
}

enum CalculatorInputValues {
  effacement,
  midlineShift,
  glucose,
  previousStroke,
  intervention
}

extension CalculatorInputValuesExtension on CalculatorInputValues {
  // the title that gets displayed in the UI
  String get title {
    switch (this) {
      case CalculatorInputValues.effacement:
        return "Basilar Cistern Effacement";
      case CalculatorInputValues.midlineShift:
        return "Midline Shift";
      case CalculatorInputValues.glucose:
        return "Glucose";
      case CalculatorInputValues.previousStroke:
        return "Previous Stroke";
      case CalculatorInputValues.intervention:
        return "Intervention (tPA or thrombectomy)";
    }
  }

  // the description that gets displayed in the UI
  String get description {
    switch (this) {
      case CalculatorInputValues.effacement:
        return "Was there basilar cistern effacement within 24hrs of last seen well on CT?";
      case CalculatorInputValues.midlineShift:
        return "How many millimeters of midline shift were there within 24hrs of last seen well on CT?";
      case CalculatorInputValues.glucose:
        return "What was the patient’s admission glucose (first glucose)?";
      case CalculatorInputValues.previousStroke:
        return "Did the patient have a previous stroke?";
      case CalculatorInputValues.intervention:
        return "Did the patient undergo initial intervention with either tissue plasminogen activator (tPA) or mechanical thrombectomy?";
    }
  }

  List<CalculatorInputOptions> get options {
    switch (this) {
      case CalculatorInputValues.effacement:
        return [
          CalculatorInputOptions(title: "No", score: 0),
          CalculatorInputOptions(title: "Yes", score: 3),
        ];
      case CalculatorInputValues.midlineShift:
        return [
          CalculatorInputOptions(title: "0", score: 0),
          CalculatorInputOptions(title: ">0 and ≤3 mm", score: 1),
          CalculatorInputOptions(title: ">3 and ≤6 mm", score: 2),
          CalculatorInputOptions(title: ">6 and ≤9 mm", score: 4),
          CalculatorInputOptions(title: ">9 mm", score: 7),
        ];
      case CalculatorInputValues.glucose:
        return [
          CalculatorInputOptions(title: "<150", score: 0),
          CalculatorInputOptions(title: "≥150", score: 2),
        ];
      case CalculatorInputValues.previousStroke:
        return [
          CalculatorInputOptions(title: "Yes", score: 0),
          CalculatorInputOptions(title: "No", score: 1),
        ];
      case CalculatorInputValues.intervention:
        return [
          CalculatorInputOptions(title: "Yes", score: 0),
          CalculatorInputOptions(title: "No", score: 1),
        ];
    }
  }

  // the parameter name in the URL
  String get param {
    switch (this) {
      case CalculatorInputValues.effacement:
        return "effacement";
      case CalculatorInputValues.midlineShift:
        return "midline-shift";
      case CalculatorInputValues.glucose:
        return "glucose";
      case CalculatorInputValues.previousStroke:
        return "previous-stroke";
      case CalculatorInputValues.intervention:
        return "intervention";
    }
  }
}
