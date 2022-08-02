import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  const Score({Key? key, required this.totalScore}) : super(key: key);

  final int totalScore;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
              text: totalScore.toString(),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
              children: const <TextSpan>[
                TextSpan(
                  text: " points",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                )
              ]),
        ),
        const Text("Lorem epsum"),
      ],
    );
  }
}
