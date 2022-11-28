import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/consts/calculator_input.dart';
import 'package:edema_calc/providers.dart';
import 'package:edema_calc/widgets/customInput.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShareButton extends StatefulWidget {
  const ShareButton(this.urlParameters, {Key? key}) : super(key: key);
  final UrlParameters urlParameters;

  @override
  ShareButtonState createState() => ShareButtonState();
}

class ShareButtonState extends State<ShareButton> {
  bool activateButton = false;
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController feedbackTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Share the Score"),
            content: SizedBox(
              height: 200,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  CustomInput(
                    title: "Patient's name",
                    controller: nameTextEditingController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(40),
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z\\s]")),
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                  ),
                  const SizedBox(height: 5),
                  CustomInput(
                    title: "Feedback link",
                    controller: feedbackTextEditingController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(120),
                      FilteringTextInputFormatter.singleLineFormatter,
                    ],
                  ),
                ],
              ),
            ),
            actions: [
              InkWell(
                child: Container(
                  height: buttonHeight,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: getButtonDecoration(
                    color: Colors.green[400],
                    roundBorders: true,
                  ),
                  child: const Text(
                    "Generate Link",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                onTap: () {
                  String urlToShare = buildUrl();
                  Clipboard.setData(ClipboardData(text: urlToShare));
                  setState(() {
                    activateButton = true;
                  });
                  Future.delayed(const Duration(seconds: 2), () {
                    setState(() {
                      activateButton = false;
                    });
                  });
                  Navigator.pop(context);
                },
              )
            ],
          );
        },
      ),
      child: Container(
        height: buttonHeight,
        width: activateButton ? 150 : 100,
        alignment: Alignment.center,
        decoration: getButtonDecoration(
          color: activateButton ? Colors.green[400] : null,
          roundBorders: true,
        ),
        child: Text(
          activateButton ? "Link Copied" : "Share",
          style: TextStyle(
            fontSize: 16,
            color: activateButton ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  // build URL returns a URL that allwos pre-populating inputs when accessed
  String buildUrl() {
    List<String> params = CalculatorInputValues.values
        .map((c) => c.param + "=" + widget.urlParameters.from(c).toString())
        .toList();
    String s = "/?";
    for (var p in params) {
      s += p + "&";
    }
    String patientName = nameTextEditingController.text;
    String feedbackLink = feedbackTextEditingController.text;
    if (patientName.isNotEmpty) {
      s += UrlParameterName.patient.string +
          '=' +
          Uri.encodeComponent(patientName) +
          '&';
    }
    if (feedbackLink.isNotEmpty) {
      s += UrlParameterName.feedback.string + '=' + feedbackLink;
    }
    return Uri.base.origin + s.substring(0, s.length - 1);
  }
}
