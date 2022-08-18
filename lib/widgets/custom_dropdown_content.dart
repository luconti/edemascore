import 'package:flutter/material.dart';

class CustomDropdownContent extends StatelessWidget {
  const CustomDropdownContent(this.child, {Key? key});

  final Widget child;

  @override
  Widget build(BuildContext) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.13),
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: child,
    );
  }
}
