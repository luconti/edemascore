import 'package:flutter/material.dart';

class CustomDropdownContent extends StatelessWidget {
  const CustomDropdownContent({Key? key, required this.content});

  final String content;

  @override
  Widget build(BuildContext) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.13),
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: Text(
        content,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
