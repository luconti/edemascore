import 'package:edema_calc/consts/calculator_input.dart';
import 'package:edema_calc/providers.dart';
import 'package:edema_calc/widgets/calculator_options.dart';
import 'package:flutter/material.dart';

class CalculatorInput extends StatelessWidget {
  const CalculatorInput({
    Key? key,
    required this.input,
    required this.urlParameters,
  }) : super(key: key);

  final CalculatorInputValues input;
  final UrlParameters urlParameters;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    input.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    input.description,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: CalculatorOptions(
                options: input.options,
                urlParameter: urlParameters.from(input),
                selectOption: (int i) => urlParameters.set(input, i),
              ),
            ),
          ),
        ],
      );
    });
  }
}
