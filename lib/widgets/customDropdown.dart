import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
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
                isHover: false,
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
              height: 10,
              color: Colors.yellow,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 10,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }
}
