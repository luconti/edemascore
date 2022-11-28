import 'package:edema_calc/authors.dart';
import 'package:edema_calc/interventions.dart';
import 'package:edema_calc/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  late UrlParameters urlParameters;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<UrlParameters>(
            create: (context) => urlParameters,
          ),
        ],
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              fontFamily: 'OpenSans',
              primarySwatch: Colors.blue,
            ),
            onGenerateRoute: (settings) {
              // instanchiate selected options
              // TODO: avoid restarting selected options everytime
              urlParameters = UrlParameters.fromURI(settings);

              // get route name
              final route = Uri.parse(settings.name ?? "/");
              final routeName = route.path;

              if (routeName == HomePage.routeName) {
                return MaterialPageRoute(
                  settings: settings,
                  builder: (context) {
                    return const HomePage();
                  },
                );
              }

              if (routeName == AuthorsPage.routeName) {
                return MaterialPageRoute(
                  settings: settings,
                  builder: (context) {
                    return const AuthorsPage();
                  },
                );
              }

              if (routeName == InterventionsPage.routeName) {
                return MaterialPageRoute(
                  settings: settings,
                  builder: (context) {
                    return const InterventionsPage();
                  },
                );
              }
            },
          );
        });
  }
}
