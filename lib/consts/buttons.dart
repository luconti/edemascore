import 'package:flutter/material.dart';

BoxDecoration getButtonDecoration({
  required bool isSelected,
  required bool isFirst,
  required bool isLast,
  bool verticallyStacked = true,
}) {
  return BoxDecoration(
    color: isSelected ? Colors.blue[400] : Colors.black.withOpacity(0.08),
    borderRadius: BorderRadius.only(
      topLeft: isFirst ? const Radius.circular(5) : const Radius.circular(0),
      topRight: isFirst && verticallyStacked || isLast && !verticallyStacked
          ? const Radius.circular(5)
          : const Radius.circular(0),
      bottomLeft: isFirst && !verticallyStacked || isLast && verticallyStacked
          ? const Radius.circular(5)
          : const Radius.circular(0),
      bottomRight: isLast ? const Radius.circular(5) : const Radius.circular(0),
    ),
    border: Border.all(
      color: Colors.black,
      width: 0.1,
    ),
  );
}

const double buttonHeight = 40;
