import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:html' as html;

class FeedbackButton extends StatelessWidget {
  const FeedbackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => html.window.open(
          "https://redcap.bumc.bu.edu/surveys/?s=E47CTNEYAPA898K3", "new tab"),
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
