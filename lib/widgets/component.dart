import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/widgets/options.dart';
import 'package:flutter/material.dart';

class Component extends StatefulWidget {
  const Component({
    Key? key,
    required this.input,
    required this.onSelectOption,
    this.selectedOption = 0,
  }) : super(key: key);

  final ComponentInput input;
  final void Function(int index) onSelectOption;
  final int selectedOption;

  @override
  State<StatefulWidget> createState() => ComponentState();
}

class ComponentState extends State<Component> {
  late int selectedOption;

  @override
  void initState() {
    // the selected option starts as the one passed as argument from the parent
    selectedOption = widget.selectedOption;
    super.initState();
  }

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
              padding: const EdgeInsets.only(top: 10, bottom: 10),
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
              padding: const EdgeInsets.only(top: 10, bottom: 10),
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
