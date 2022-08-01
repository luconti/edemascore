import 'package:edema_calc/widgets/component_option.dart';
import 'package:flutter/material.dart';

class ComponentOptions extends StatefulWidget {
  const ComponentOptions({Key? key, required this.options}) : super(key: key);

  final List<ComponentOptionInput> options;

  @override
  State<ComponentOptions> createState() => ComponentOptionsState();
}

class ComponentOptionsState extends State<ComponentOptions> {
  ComponentOptionsState();

  int selectedOption = 0;

  void selectOption(int i) {
    setState(() {
      selectedOption = i;
    });
  }

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        for (int i = 0; i < widget.options.length; i++)
          ComponentOption(
            input: widget.options[i],
            isSelected: i == selectedOption,
            callback: selectOption,
            index: i,
            isLast: i == widget.options.length - 1,
          )
      ],
    );
    ;
  }
}
