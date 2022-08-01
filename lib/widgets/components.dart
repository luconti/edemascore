import 'package:flutter/material.dart';

class ButtonInput {
  final String title;
  final String value;

  ButtonInput({
    required this.title,
    required this.value,
  });
}

class Components extends StatelessWidget {
  const Components({Key? key}) : super(key: key);

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
