import 'package:flutter/material.dart';

class ComponentTitle extends StatelessWidget {
  const ComponentTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
