import 'package:edema_calc/widgets/custom_dropdown_button.dart';
import 'package:flutter/material.dart';

BoxDecoration getButtonDecoration({
  Color? color,
  bool? roundBorders,
  bool isSelected = false,
  bool isFirst = false,
  bool isLast = false,
  bool verticallyStacked = true,
}) {
  return BoxDecoration(
    color: color ??
        (isSelected ? Colors.blue[400] : Colors.black.withOpacity(0.08)),
    borderRadius: BorderRadius.only(
      topLeft: roundBorders == true || isFirst
          ? const Radius.circular(5)
          : const Radius.circular(0),
      topRight: roundBorders == true ||
              isFirst && verticallyStacked ||
              isLast && !verticallyStacked
          ? const Radius.circular(5)
          : const Radius.circular(0),
      bottomLeft: roundBorders == true ||
              isFirst && !verticallyStacked ||
              isLast && verticallyStacked
          ? const Radius.circular(5)
          : const Radius.circular(0),
      bottomRight: roundBorders == true || isLast
          ? const Radius.circular(5)
          : const Radius.circular(0),
    ),
    border: Border.all(
      color: Colors.black,
      width: 0.1,
    ),
  );
}

const double buttonHeight = 40;
