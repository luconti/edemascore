import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/widgets/component.dart';
import 'package:edema_calc/widgets/score.dart';
import 'package:flutter/material.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
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
