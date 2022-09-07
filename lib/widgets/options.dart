import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/widgets/option.dart';
import 'package:flutter/material.dart';

class ComponentOptions extends StatelessWidget {
  const ComponentOptions({
    Key? key,
    required this.options,
    required this.urlParameter,
    required this.selectOption,
  }) : super(key: key);

  final List<ComponentOptionInput> options;
  final void Function(int index) selectOption;
  final int urlParameter;

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 0; i < options.length; i++)
          ComponentOption(
            input: options[i],
            isSelected: i == urlParameter,
            callback: selectOption,
            index: i,
            isLast: i == options.length - 1,
          )
      ],
    );
    ;
  }
}
