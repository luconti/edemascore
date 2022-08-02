import 'package:flutter/material.dart';

class ComponentScore extends StatelessWidget {
  const ComponentScore({Key? key, required this.totalScore}) : super(key: key);

  final int totalScore;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: totalScore <= 1
            ? Colors.green
            : totalScore <= 4
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
                children: const <TextSpan>[
                  TextSpan(
                    text: " points",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ]),
          ),
          Text(
            totalScore <= 1
                ? "Low Score"
                : totalScore <= 4
                    ? "Medium Score"
                    : "High Score",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
