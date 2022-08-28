import 'package:edema_calc/providers.dart';
import 'package:edema_calc/template.dart';
import 'package:edema_calc/widgets/components.dart';
import 'package:edema_calc/widgets/custom_dropdown.dart';
import 'package:edema_calc/widgets/custom_navigation_bar.dart';
import 'package:edema_calc/widgets/feedbackButton.dart';
import 'package:edema_calc/widgets/shareButton.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({Key? key}) : super(key: key);
  static String routeName = "/authors";
  final double navigationBarHeight = 50;

  // TODO: 700 pixels is when we switch to mobile view

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // TODO: consider moving even the lateral flexes to TemplatePage

    return PageTemplate(
      page: Row(
        children: [
          Flexible(
            flex: calculateLateralFlex(screenWidth),
            child: Container(),
          ),
          Flexible(
            flex: calculateCenterFlex(screenWidth),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: PageTitle("Authors"),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: calculateLateralFlex(screenWidth),
            child: Container(),
          ),
        ],
      ),
    );
  }

  int calculateCenterFlex(double screenWidth) {
    return screenWidth < 550
        ? 16
        : screenWidth < 750
            ? 12
            : screenWidth < 1000
                ? 6
                : 4;
  }

  int calculateLateralFlex(double screenWidth) {
    return screenWidth < 550
        ? 0
        : screenWidth < 700
            ? 1
            : screenWidth < 1100
                ? 2
                : 3;
  }
}
