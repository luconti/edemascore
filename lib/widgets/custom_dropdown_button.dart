import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    Key? key,
    required this.title,
    required this.callback,
    required this.isFirst,
    required this.isLast,
    required this.isSelected,
  }) : super(key: key);

  final String title;
  final VoidCallback callback;
  final bool isFirst;
  final bool isLast;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: buttonHeight,
        alignment: Alignment.center,
        decoration: getButtonDecoration(
          isSelected: isSelected,
          isFirst: isFirst,
          isLast: isLast,
          verticallyStacked: false,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
