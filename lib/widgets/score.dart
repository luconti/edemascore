import 'package:edema_calc/consts/score.dart';
import 'package:flutter/material.dart';

class ComponentScore extends StatelessWidget {
  const ComponentScore({Key? key, required this.totalScore}) : super(key: key);

  final int totalScore;

  @override
  Widget build(BuildContext context) {
    String description = scoreMap[totalScore]?.getString() ?? "";

    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: totalScore <= 3
            ? Colors.green
            : totalScore <= 5
                ? Colors.orange
                : Colors.red,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: totalScore.toString(),
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  const TextSpan(
                    text: " points",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text: totalScore <= 3
                        ? " (low score)"
                        : totalScore <= 5
                            ? " (medium score)"
                            : " (high score)",
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
