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
        final uri = Uri.parse(settings.name ?? "/");
        final routeName = uri.path;

        if (routeName == HomePage.routeName) {
          // extract which options to choose for each component
          final name = uri.queryParameters['name'];
          final effacement = uri.queryParameters['effacement'] ?? "No";
          final midlineShift = uri.queryParameters['midline-shift'];
          final glucose = uri.queryParameters['glucose'];
          final previousStroke = uri.queryParameters['previous-stroke'];
          final intervention = uri.queryParameters['intervention'];

          return MaterialPageRoute(builder: (context) {
            return const HomePage(title: "Edema Score Home Page");
          });
        }
      },
    );
  }
}
