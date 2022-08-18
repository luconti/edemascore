import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/consts/components.dart';
import 'package:edema_calc/widgets/components.dart';
import 'package:edema_calc/widgets/custom_dropdown.dart';
import 'package:edema_calc/widgets/shareButton.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.selectedOptions}) : super(key: key);

  static String routeName = "/";
  final PreselectedOptions selectedOptions;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Row(
            children: [
              Flexible(
                flex: calculateLateralFlex(constraints),
                child: Container(),
              ),
              Flexible(
                flex: calculateCenterFlex(constraints),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: PageTitle("EDEMA Calculator"),
                      ),
                      const CustomDropdown(),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 50),
                        child: Components(widget.selectedOptions),
                      ),
                      ShareButton()
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: calculateLateralFlex(constraints),
                child: Container(),
              ),
            ],
          ),
        );
      }),
    );
  }
}

int calculateCenterFlex(BoxConstraints constraints) {
  return constraints.maxWidth < 550
      ? 16
      : constraints.maxWidth < 750
          ? 12
          : constraints.maxWidth < 1000
              ? 6
              : 4;
}

int calculateLateralFlex(BoxConstraints constraints) {
  return constraints.maxWidth < 550
      ? 0
      : constraints.maxWidth < 700
          ? 1
          : constraints.maxWidth < 1100
              ? 2
              : 3;
}
