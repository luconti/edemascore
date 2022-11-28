// ignore: file_names
import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClearButton extends StatefulWidget {
  const ClearButton({Key? key}) : super(key: key);

  @override
  ClearButtonState createState() => ClearButtonState();
}

class ClearButtonState extends State<ClearButton> {
  bool activateButton = false;
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController feedbackTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<UrlParameters>(
      builder: (context, params, _) => InkWell(
        onTap: () {
          params.reset();
        },
        child: Container(
          height: buttonHeight,
          width: activateButton ? 150 : 100,
          alignment: Alignment.center,
          decoration: getButtonDecoration(
            color: activateButton ? Colors.green[400] : null,
            roundBorders: true,
          ),
          child: Text(
            activateButton ? "New Score Cleared" : "Clear",
            style: TextStyle(
              fontSize: 16,
              color: activateButton ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
