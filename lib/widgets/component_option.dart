import 'package:flutter/material.dart';

class ComponentOptionInput {
  final String title;
  final int score;

  ComponentOptionInput({required this.title, required this.score});
}

// ignore: must_be_immutable
class ComponentOption extends StatelessWidget {
  ComponentOption({
    Key? key,
    required this.input,
    required this.isSelected,
    this.isTop = false,
    this.isBottom = false,
  }) : super(key: key);

  final ComponentOptionInput input;
  final bool isSelected;
  bool isTop;
  bool isBottom;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              input.title,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
            Text(
              "+" + input.score.toString(),
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue[400] : Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.only(
            topLeft:
                isTop ? const Radius.circular(5) : const Radius.circular(0),
            topRight:
                isTop ? const Radius.circular(5) : const Radius.circular(0),
            bottomLeft:
                isBottom ? const Radius.circular(5) : const Radius.circular(0),
            bottomRight:
                isBottom ? const Radius.circular(5) : const Radius.circular(0),
          ),
          border: Border.all(
            color: Colors.black,
            width: 0.1,
          ),
        ),
      ),
    );
  }
}
