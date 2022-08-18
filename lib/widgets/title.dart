import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
