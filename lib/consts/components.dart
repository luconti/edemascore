import 'package:edema_calc/widgets/component.dart';
import 'package:edema_calc/widgets/option.dart';

List<ComponentInput> components = [
  ComponentInput(
    title: "Basilar Cistern Effacement",
    description:
        "Was there basilar cistern effacement within 24hrs of last seen well on CT?",
    options: [
      ComponentOptionInput(title: "No", score: 0),
      ComponentOptionInput(title: "Yes", score: 3),
    ],
  ),
  ComponentInput(
    title: "Midline Shift",
    description:
        "How many millimeters of midline shift were there within 24hrs of last seen well on CT?",
    options: [
      ComponentOptionInput(title: "0", score: 0),
      ComponentOptionInput(title: ">0 and ≤3 mm", score: 1),
      ComponentOptionInput(title: ">3 and ≤6 mm", score: 2),
      ComponentOptionInput(title: ">6 and ≤9 mm", score: 4),
      ComponentOptionInput(title: ">9 mm", score: 7),
    ],
  ),
  ComponentInput(
    title: "Glucose",
    description: "What was the patient’s admission glucose (first glucose)?",
    options: [
      ComponentOptionInput(title: "<150", score: 0),
      ComponentOptionInput(title: "≥150", score: 2),
    ],
  ),
  ComponentInput(
    title: "Previous Stroke",
    description: "Did the patient have a previous stroke?",
    options: [
      ComponentOptionInput(title: "Yes", score: 0),
      ComponentOptionInput(title: "No", score: 1),
    ],
  ),
  ComponentInput(
    title: "Intervention (tPA or thrombectomy)",
    description:
        "Did the patient undergo initial intervention with either tissue plasminogen activator (tPA) or mechanical thrombectomy?",
    options: [
      ComponentOptionInput(title: "Yes", score: 0),
      ComponentOptionInput(title: "No", score: 1),
    ],
  ),
];
