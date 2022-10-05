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
  const HomePage({Key? key, required this.urlParameters}) : super(key: key);

  static String routeName = "/";
  final UrlParameters urlParameters;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _totalScore = -1;

  @override
  void initState() {
    super.initState();

    _totalScore = calculateScore(widget.urlParameters);
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      // page title and score are sticky at the top
      stickyHeader: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: PageTitle("EDEMA Score Calculator"),
          ),
          // score
          Consumer<UrlParameters>(builder: (context, params, _) {
            // update score whenever the builder is called
            _totalScore = calculateScore(params);
            return CalculatorScore(totalScore: _totalScore);
          }),
          const SizedBox(height: 20),
        ],
      ),
      page: Column(
        children: [
          // dropdown menu
          const HomeDropdown(),
          const SizedBox(height: 20),
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
          // buttons
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
            ),
          ),
        ],
      ),
    );
  }

  int calculateScore(UrlParameters params) {
    return CalculatorInputValues.values
        .map((c) => c.options[params.from(c)].score)
        .toList()
        .reduce((sum, score) => sum + score);
  }
}
