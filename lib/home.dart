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
  final ScrollController _mainScrollController = ScrollController();
  final double _removableWidgetSize = 77;
  bool _isStickyOnTop = false;
  int _totalScore = -1;

  @override
  void initState() {
    super.initState();

    _totalScore = CalculatorInputValues.values
        .map((c) => c.options[widget.urlParameters.from(c)].score)
        .toList()
        .reduce((sum, score) => sum + score);

    _mainScrollController.addListener(() {
      if (_mainScrollController.offset >= _removableWidgetSize &&
          !_isStickyOnTop) {
        setState(() {
          _isStickyOnTop = true;
        });
      } else if (_mainScrollController.offset < _removableWidgetSize &&
          _isStickyOnTop) {
        setState(() {
          _isStickyOnTop = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplate(page: Consumer<UrlParameters>(
      builder: (context, urlParameters, _) {
        // calculate total score from selected options
        _totalScore = CalculatorInputValues.values
            .map((c) => c.options[urlParameters.from(c)].score)
            .toList()
            .reduce((sum, score) => sum + score);
        return Stack(
          children: [
            ListView(
              controller: _mainScrollController,
              shrinkWrap: true,
              children: [
                // page title
                const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: PageTitle("EDEMA Score Calculator"),
                ),
                // score
                _getStickyScore(_totalScore),
                const SizedBox(height: 20),
                // dropdown menu
                const HomeDropdown(),
                // calculator
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(),
                      for (int i = 0;
                          i < CalculatorInputValues.values.length;
                          ++i)
                        Column(
                          children: [
                            CalculatorInput(
                              input: CalculatorInputValues.values[i],
                              urlParameters: urlParameters,
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
                )
              ],
            ),
            if (_isStickyOnTop) _getStickyScore(_totalScore)
          ],
        );
      },
    ));
  }
}

Widget _getStickyScore(int score) {
  return SizedBox(height: 150, child: CalculatorScore(totalScore: score));
}
