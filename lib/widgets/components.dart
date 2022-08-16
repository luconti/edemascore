import 'package:edema_calc/widgets/component.dart';
import 'package:edema_calc/widgets/option.dart';
import 'package:edema_calc/widgets/component_score.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';

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
      ComponentOptionInput(title: ">=150", score: 2),
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

class Components extends StatefulWidget {
  const Components({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Components> createState() => ComponentsState();
}

class ComponentsState extends State<Components> {
  // initally, the first option of each component is the selected one
  List<int> scores = components.map((c) => c.options[0].score).toList();

  int totalScore = 0;

  @override
  void initState() {
    for (int s in scores) {
      totalScore += s;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // recompute total score whenever state is reset
    totalScore = 0;
    for (int s in scores) {
      totalScore += s;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ComponentTitle(title: widget.title),
        for (int i = 0; i < components.length; ++i)
          Column(
            children: [
              Component(
                input: components[i],
                onSelectOption: (selectedOption) => setState(() {
                  scores[i] = components[i].options[selectedOption].score;
                }),
              ),
              const Divider(),
            ],
          ),
        ComponentScore(totalScore: totalScore),
      ],
    );
  }
}
