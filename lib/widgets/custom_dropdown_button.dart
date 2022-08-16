import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    Key? key,
    required this.callback,
    required this.isFirst,
    required this.isLast,
  }) : super(key: key);

  final VoidCallback callback;
  final bool isFirst;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: buttonHeight,
        decoration: getButtonDecoration(
          isSelected: false,
          isFirst: isFirst,
          isLast: isLast,
          verticallyStacked: false,
        ),
      ),
    );
  }
}
