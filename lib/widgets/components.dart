import 'package:edema_calc/widgets/component.dart';
import 'package:edema_calc/widgets/component_option.dart';
import 'package:edema_calc/widgets/score.dart';
import 'package:flutter/material.dart';

List<ComponentInput> components = [
  ComponentInput(
    title: "Effacement",
    description: "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
    options: [
      ComponentOptionInput(title: "No", score: 0),
      ComponentOptionInput(title: "Yes", score: 3),
    ],
  ),
  ComponentInput(
    title: "Midline Shift",
    description: "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
    options: [
      ComponentOptionInput(title: "0", score: 0),
      ComponentOptionInput(title: "0-3mm", score: 1),
      ComponentOptionInput(title: "3-6mm", score: 2),
      ComponentOptionInput(title: "6-9mm", score: 4),
      ComponentOptionInput(title: ">9mm", score: 7),
    ],
  ),
  ComponentInput(
    title: "Glucose",
    description:
        "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm yorm epsum yorm epsum yorm epsum yorm",
    options: [
      ComponentOptionInput(title: "<150", score: 0),
      ComponentOptionInput(title: ">=150", score: 2),
    ],
  ),
  ComponentInput(
    title: "Previous Stroke",
    description: "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
    options: [
      ComponentOptionInput(title: "Yes", score: 0),
      ComponentOptionInput(title: "No", score: 1),
    ],
  ),
  ComponentInput(
    title: "Intervention (tPA or thrombectomy",
    description: "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
    options: [
      ComponentOptionInput(title: "Yes", score: 0),
      ComponentOptionInput(title: "No", score: 1),
    ],
  ),
];

class Components extends StatefulWidget {
  const Components({Key? key}) : super(key: key);

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
        Score(totalScore: totalScore),
      ],
    );
  }
}
