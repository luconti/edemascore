import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/providers.dart';
import 'package:edema_calc/widgets/options.dart';
import 'package:flutter/material.dart';

class Component extends StatelessWidget {
  const Component({
    Key? key,
    required this.input,
    required this.selectedOptions,
  }) : super(key: key);

  final ComponentInput input;
  final SelectedOptions selectedOptions;

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
              child: ComponentOptions(
                options: input.options,
                selectedOption: selectedOptions.from(input),
                selectOption: (int i) => selectedOptions.set(input, i),
              ),
            ),
          ),
        ],
      );
    });
  }
}
