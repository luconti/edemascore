import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: buttonHeight,
                  decoration: getButtonDecoration(
                    isSelected: false,
                    isFirst: true,
                    isLast: false,
                    verticallyStacked: false,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: buttonHeight,
                  decoration: getButtonDecoration(
                    isSelected: false,
                    isFirst: false,
                    isLast: false,
                    verticallyStacked: false,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: buttonHeight,
                  decoration: getButtonDecoration(
                    isSelected: false,
                    isFirst: false,
                    isLast: true,
                    verticallyStacked: false,
                  ),
                ),
              ),
            ),
          ],
        ),
        // TODO: extract this into another component
        Row(
          children: [
            Flexible(
              child: AnimatedContainer(
                // TODO: edit padding
                duration: const Duration(milliseconds: 500),
                padding: const EdgeInsets.all(50),
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                    "Hello world Hello world Hello world Hello world Hello world Hello world Hello world Hello world "),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.15),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
