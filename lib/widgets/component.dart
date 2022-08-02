import 'package:edema_calc/widgets/option.dart';
import 'package:edema_calc/widgets/options.dart';
import 'package:flutter/material.dart';

class ComponentInput {
  final String title;
  final String description;
  final List<ComponentOptionInput> options;

  ComponentInput({
    required this.title,
    required this.description,
    required this.options,
  });
}

class Component extends StatefulWidget {
  const Component({
    Key? key,
    required this.input,
    required this.onSelectOption,
  }) : super(key: key);

  final ComponentInput input;
  final void Function(int index) onSelectOption;

  @override
  State<StatefulWidget> createState() => ComponentState();
}

class ComponentState extends State<Component> {
  int selectedOption = 0;

  void selectOption(int i) {
    setState(() {
      selectedOption = i;
    });
    widget.onSelectOption(i);
  }

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
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    widget.input.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    widget.input.description,
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
          Flexible(
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: ComponentOptions(
                options: widget.input.options,
                selectedOption: selectedOption,
                selectOption: selectOption,
              ),
            ),
          ),
        ],
      );
    });
  }
}
