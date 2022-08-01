import 'package:edema_calc/widgets/component_option.dart';
import 'package:flutter/material.dart';

class ComponentOptions extends StatelessWidget {
  const ComponentOptions({
    Key? key,
    required this.options,
  }) : super(key: key);

  final List<ComponentOptionInput> options;

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (ComponentOptionInput o in options) ComponentOption(input: o)
      ],
    );
    ;
  }
}
