import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        height: 40,
        decoration: const BoxDecoration(
          color: Colors.black,
          // TODO: only add radius to top and bottom buttons
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
