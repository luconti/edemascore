import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/consts/calculator_input.dart';
import 'package:edema_calc/providers.dart';
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

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
    return Uri.base.origin + s.substring(0, s.length - 1);
  }
}
