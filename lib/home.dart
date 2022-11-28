import 'package:edema_calc/consts/calculator_input.dart';
import 'package:edema_calc/providers.dart';
import 'package:edema_calc/template.dart';
import 'package:edema_calc/widgets/calculator_input.dart';
import 'package:edema_calc/widgets/calculator_score.dart';
import 'package:edema_calc/widgets/home_dropdown.dart';
import 'package:edema_calc/widgets/feedbackButton.dart';
import 'package:edema_calc/widgets/shareButton.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static String routeName = "/";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      // page title and score are sticky at the top
      stickyHeader: Column(
        children: [
          const SizedBox(height: 20),
          // title
          const PageTitle("EDEMA Score Calculator"),
          const SizedBox(height: 20),
          // dropdown menu
          const HomeDropdown(),
          const SizedBox(height: 20),
          // original score
          // TODO: why not consume urlParameters "within" CalculatorScore?
          Consumer<UrlParameters>(
            builder: (context, params, _) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              // don't pass patientName so score is displayed as generic
              // TODO: display a different title for this
              child: CalculatorScore(
                totalScore: calculateScore(params, original: true),
                patientName: params.roPatientName,
              ),
            ),
          ),
          // dynamic score is displayed iff the user updated the inputs
          Consumer<UrlParameters>(builder: (context, params, _) {
            return params.dirty
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    // don't pass patientName so score is displayed as generic
                    // TODO: display a different title for this
                    child: CalculatorScore(totalScore: calculateScore(params)),
                  )
                : Container();
          })
        ],
      ),
      page: Column(
        children: [
          // calculator
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(),
                for (int i = 0; i < CalculatorInputValues.values.length; ++i)
                  Column(
                    children: [
                      Consumer<UrlParameters>(
                        builder: (context, urlParameters, _) {
                          return CalculatorInput(
                            input: CalculatorInputValues.values[i],
                            urlParameters: urlParameters,
                          );
                        },
                      ),
                      const Divider(),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
      footer: // buttons
          Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Consumer<UrlParameters>(
          // display share button iff URL doesn't specify a feedback link
          builder: (context, urlParameters, _) {
            return urlParameters.researcherView
                ? ShareButton(urlParameters)
                : FeedbackButton(link: urlParameters.feedbackLink);
          },
        ),
      ),
    );
  }

  int calculateScore(UrlParameters params, {bool original = false}) {
    return CalculatorInputValues.values
        .map((c) =>
            c.options[original ? params.fromOriginal(c) : params.from(c)].score)
        .toList()
        .reduce((sum, score) => sum + score);
  }
}
