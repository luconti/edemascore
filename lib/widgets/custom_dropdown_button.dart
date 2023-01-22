import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  const CustomDropdownButton({
    Key? key,
    required this.title,
    required this.callback,
    this.isFirst = false,
    this.isLast = false,
    required this.isSelected,
    this.verticallyStacked = true,
    this.isBold = false,
    this.showDecoration = true,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  final String title;
  final VoidCallback callback;
  final bool isFirst;
  final bool isLast;
  final bool isSelected;
  final bool verticallyStacked;
  final MainAxisAlignment mainAxisAlignment;
  final bool isBold;
  final bool showDecoration;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: buttonHeight,
        alignment: Alignment.center,
        decoration: showDecoration
            ? getButtonDecoration(
                isSelected: isSelected,
                isFirst: isFirst,
                isLast: isLast,
                verticallyStacked: verticallyStacked,
              )
            : null,
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 1),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1, right: 2),
              child: Icon(
                isSelected
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
