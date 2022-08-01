import 'package:flutter/material.dart';

class ComponentOptionInput {
  final String title;
  final int score;

  ComponentOptionInput({required this.title, required this.score});
}

class ComponentOption extends StatelessWidget {
  const ComponentOption({Key? key, required this.input}) : super(key: key);

  final ComponentOptionInput input;

  @override
  Widget build(BuildContext context) {
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
