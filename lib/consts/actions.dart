import 'package:edema_calc/authors.dart';
import 'package:edema_calc/home.dart';
import 'package:edema_calc/interventions.dart';

class CustomAction {
  final String title;
  final String routeName;

  CustomAction({required this.title, required this.routeName});
}

List<CustomAction> actions = [
  CustomAction(
    title: "Home",
    routeName: HomePage.routeName,
  ),
  CustomAction(
    title: "Interventions",
    routeName: InterventionsPage.routeName,
  ),
  CustomAction(
    title: "About the author",
    routeName: AuthorsPage.routeName,
  ),
];
