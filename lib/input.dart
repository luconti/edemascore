import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.color}) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: color,
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.yellow[50],
            ),
          )
        ],
      ),
    );
  }
}
