import 'package:edema_calc/consts/buttons.dart';
import 'package:flutter/material.dart';

class ShareButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: build custom URL
      },
      child: Container(
        height: buttonHeight,
        // TODO: dynamic width
        width: 100,
        alignment: Alignment.center,
        decoration: getButtonDecoration(roundBorders: true),
        child: const Text(
          "Share",
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
