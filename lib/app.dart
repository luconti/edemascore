import 'package:edema_calc/consts/components.dart';
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
  late SelectedOptions selectedOptions;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<SelectedOptions>(
            create: (context) => selectedOptions,
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
              selectedOptions = SelectedOptions.fromURI(settings);

              // get route name
              final route = Uri.parse(settings.name ?? "/");
              final routeName = route.path;

              if (routeName == HomePage.routeName) {
                return MaterialPageRoute(builder: (context) {
                  return const HomePage();
                });
              }
            },
          );
        });
  }
}
