import 'package:edema_calc/widgets/component.dart';
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
      children: const [
        Component(),
        Component(),
      ],
    );
    ;
  }
}
