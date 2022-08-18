import 'package:edema_calc/consts/components.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        // get route name
        final route = Uri.parse(settings.name ?? "/");
        final routeName = route.path;

        final newURI = Uri.base.replace(path: "a different path");

        // debugPrint(Uri.base.authority);
        // // debugPrint(settings.name);

        if (routeName == HomePage.routeName) {
          // map from the URL parameter possible values
          const Map<String, int> toInt = {
            "0": 0,
            "1": 1,
            "2": 2,
            "3": 3,
            "4": 4,
            "5": 5
          };

          // extract from the URL the preselected option of each component
          int effacementOption =
              toInt[route.queryParameters['effacement']] ?? 0;
          effacementOption = effacementOption > 2 ? 2 : effacementOption;
          int midlineShiftOption =
              toInt[route.queryParameters['midline-shift']] ?? 0;
          int glucoseOption = toInt[route.queryParameters['glucose']] ?? 0;
          glucoseOption = glucoseOption > 2 ? 2 : glucoseOption;
          int previousStrokeOption =
              toInt[route.queryParameters['previous-stroke']] ?? 0;
          previousStrokeOption =
              previousStrokeOption > 2 ? 2 : previousStrokeOption;
          int interventionOption =
              toInt[route.queryParameters['intervention']] ?? 0;
          interventionOption = interventionOption > 2 ? 2 : interventionOption;

          return MaterialPageRoute(builder: (context) {
            return HomePage(
              selectedOptions: SelectedOptions(
                effacement: effacementOption,
                midlineShift: midlineShiftOption,
                glucose: glucoseOption,
                previousStroke: previousStrokeOption,
                intervention: interventionOption,
              ),
            );
          });
        }
      },
    );
  }
}
