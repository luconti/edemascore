import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/providers.dart';
import 'package:edema_calc/widgets/component.dart';
import 'package:edema_calc/widgets/score.dart';
import 'package:flutter/material.dart';

class Components extends StatelessWidget {
  const Components(
    this.urlParameters, {
    Key? key,
  }) : super(key: key);

  final UrlParameters urlParameters;

  @override
  Widget build(BuildContext context) {
    // calculate total score from selected options
    int totalScore = ComponentInput.values
        .map((c) => c.options[urlParameters.from(c)].score)
        .toList()
        .reduce((sum, score) => sum + score);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        for (int i = 0; i < ComponentInput.values.length; ++i)
          Column(
            children: [
              Component(
                input: ComponentInput.values[i],
                urlParameters: urlParameters,
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
