import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // make this a dropdown button
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
    );
  }
}
