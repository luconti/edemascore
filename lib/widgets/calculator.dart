import 'package:edema_calc/consts/calculator_input.dart';
import 'package:edema_calc/providers.dart';
import 'package:edema_calc/widgets/calculator_input.dart';
import 'package:edema_calc/widgets/calculator_score.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator(
    this.urlParameters, {
    Key? key,
  }) : super(key: key);

  final UrlParameters urlParameters;

  @override
  Widget build(BuildContext context) {
    // calculate total score from selected options
    int totalScore = CalculatorInputValues.values
        .map((c) => c.options[urlParameters.from(c)].score)
        .toList()
        .reduce((sum, score) => sum + score);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        for (int i = 0; i < CalculatorInputValues.values.length; ++i)
          Column(
            children: [
              CalculatorInput(
                input: CalculatorInputValues.values[i],
                urlParameters: urlParameters,
              ),
              const Divider(),
            ],
          ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: CalculatorScore(totalScore: totalScore),
        ),
      ],
    );
  }
}
