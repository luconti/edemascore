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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routeName = "/";
  final double navigationBarHeight = 50;

  // TODO: 700 pixels is when we switch to mobile view

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return PageTemplate(
      page: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: PageTitle("EDEMA Score Calculator"),
          ),
          const CustomDropdown(),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Consumer<UrlParameters>(
              builder: (context, urlParameters, _) {
                return Components(urlParameters);
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Consumer<UrlParameters>(
                builder: (context, urlParameters, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ShareButton(urlParameters),
                      FeedbackButton(link: urlParameters.feedbackLink),
                    ],
                  );
                },
              ))
        ],
      ),
    );
  }
}
