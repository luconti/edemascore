import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
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
        ),
        GestureDetector(
          onTap: () => {},
          child: Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.black,
              // TODO: only add radius to top and bottom buttons
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
            ),
          ),
        )
      ],
    );
    ;
  }
}
