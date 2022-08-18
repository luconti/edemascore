import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/widgets/component.dart';
import 'package:edema_calc/widgets/score.dart';
import 'package:flutter/material.dart';

class Components extends StatefulWidget {
  const Components(
    this.selectedOptions, {
    Key? key,
  }) : super(key: key);

  final SelectedOptions selectedOptions;

  @override
  State<Components> createState() => ComponentsState();
}

class ComponentsState extends State<Components> {
  // initally, the first option of each component is the selected one
  List<int> scores = [];

  int totalScore = 0;

  @override
  void initState() {
    scores = ComponentInput.values
        .map((c) => c.options[widget.selectedOptions.from(c)].score)
        .toList();
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
        for (int i = 0; i < ComponentInput.values.length; ++i)
          Column(
            children: [
              Component(
                input: ComponentInput.values[i],
                selectedOption:
                    widget.selectedOptions.from(ComponentInput.values[i]),
                onSelectOption: (selectedOption) => setState(() {
                  scores[i] =
                      ComponentInput.values[i].options[selectedOption].score;
                }),
              ),
              const Divider(),
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ComponentScore(totalScore: totalScore),
        ),
      ],
    );
  }
}
