import 'package:edema_calc/widgets/components.dart';
import 'package:edema_calc/widgets/customDropdown.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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
              Flexible(flex: 3, child: Container()),
              Flexible(
                flex: calculateFlex(constraints),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: PageTitle("EDEMA Calculator"),
                    ),
                    // TODO: add Dropdowns here
                    CustomDropdown(),
                    Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: const Components(),
                    ),
                  ],
                ),
              ),
              Flexible(flex: 3, child: Container()),
            ],
          ),
        );
      }),
    );
  }
}

int calculateFlex(BoxConstraints constraints) {
  return constraints.maxWidth < 400
      ? 16
      : constraints.maxWidth < 700
          ? 12
          : constraints.maxWidth < 1000
              ? 6
              : 4;
}
