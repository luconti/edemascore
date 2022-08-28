import 'package:edema_calc/template.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({Key? key}) : super(key: key);
  static String routeName = "/authors";
  final double navigationBarHeight = 50;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // TODO: consider moving even the lateral flexes to TemplatePage

    return PageTemplate(
      page: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: PageTitle("Authors"),
            ),
          ],
        ),
      ),
    );
  }
}
