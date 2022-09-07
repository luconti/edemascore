import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

// ignore: must_be_immutable
class FeedbackButton extends StatelessWidget {
  FeedbackButton({Key? key, this.link}) : super(key: key);

  String? link;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => html.window.open(
          link ?? "https://redcap.bumc.bu.edu/surveys/?s=E47CTNEYAPA898K3",
          "new tab"),
      child: Container(
        height: buttonHeight,
        width: 100,
        alignment: Alignment.center,
        decoration: getButtonDecoration(roundBorders: true),
        child: const Text(
          "Feedback",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
