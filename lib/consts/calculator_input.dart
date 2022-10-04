class CalculatorInputOptions {
  final String title;
  final int score;

  CalculatorInputOptions({required this.title, required this.score});
}

enum CalculatorInput {
  effacement,
  midlineShift,
  glucose,
  previousStroke,
  intervention
}

extension CalculatorInputExtension on CalculatorInput {
  // the title that gets displayed in the UI
  String get title {
    switch (this) {
      case CalculatorInput.effacement:
        return "Basilar Cistern Effacement";
      case CalculatorInput.midlineShift:
        return "Midline Shift";
      case CalculatorInput.glucose:
        return "Glucose";
      case CalculatorInput.previousStroke:
        return "Previous Stroke";
      case CalculatorInput.intervention:
        return "Intervention (tPA or thrombectomy)";
    }
  }

  // the description that gets displayed in the UI
  String get description {
    switch (this) {
      case CalculatorInput.effacement:
        return "Was there basilar cistern effacement within 24hrs of last seen well on CT?";
      case CalculatorInput.midlineShift:
        return "How many millimeters of midline shift were there within 24hrs of last seen well on CT?";
      case CalculatorInput.glucose:
        return "What was the patient’s admission glucose (first glucose)?";
      case CalculatorInput.previousStroke:
        return "Did the patient have a previous stroke?";
      case CalculatorInput.intervention:
        return "Did the patient undergo initial intervention with either tissue plasminogen activator (tPA) or mechanical thrombectomy?";
    }
  }

  List<CalculatorInputOptions> get options {
    switch (this) {
      case CalculatorInput.effacement:
        return [
          CalculatorInputOptions(title: "No", score: 0),
          CalculatorInputOptions(title: "Yes", score: 3),
        ];
      case CalculatorInput.midlineShift:
        return [
          CalculatorInputOptions(title: "0", score: 0),
          CalculatorInputOptions(title: ">0 and ≤3 mm", score: 1),
          CalculatorInputOptions(title: ">3 and ≤6 mm", score: 2),
          CalculatorInputOptions(title: ">6 and ≤9 mm", score: 4),
          CalculatorInputOptions(title: ">9 mm", score: 7),
        ];
      case CalculatorInput.glucose:
        return [
          CalculatorInputOptions(title: "<150", score: 0),
          CalculatorInputOptions(title: "≥150", score: 2),
        ];
      case CalculatorInput.previousStroke:
        return [
          CalculatorInputOptions(title: "Yes", score: 0),
          CalculatorInputOptions(title: "No", score: 1),
        ];
      case CalculatorInput.intervention:
        return [
          CalculatorInputOptions(title: "Yes", score: 0),
          CalculatorInputOptions(title: "No", score: 1),
        ];
    }
  }

  // the parameter name in the URL
  String get param {
    switch (this) {
      case CalculatorInput.effacement:
        return "effacement";
      case CalculatorInput.midlineShift:
        return "midline-shift";
      case CalculatorInput.glucose:
        return "glucose";
      case CalculatorInput.previousStroke:
        return "previous-stroke";
      case CalculatorInput.intervention:
        return "intervention";
    }
  }
}
