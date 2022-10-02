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
    this.verticallyStacked = true,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  final String title;
  final VoidCallback callback;
  final bool isFirst;
  final bool isLast;
  final bool isSelected;
  final bool verticallyStacked;
  final MainAxisAlignment mainAxisAlignment;

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
          verticallyStacked: verticallyStacked,
        ),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                isSelected
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down_rounded,
                color: isSelected ? Colors.white : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
