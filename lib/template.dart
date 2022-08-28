import 'package:edema_calc/authors.dart';
import 'package:edema_calc/home.dart';
import 'package:edema_calc/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatefulWidget {
  const PageTemplate({Key? key, required this.page}) : super(key: key);

  final Widget page;
  static String routeName = "/";

  @override
  State<PageTemplate> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  final double navigationBarHeight = 50;

  // TODO: 700 pixels is when we switch to mobile view

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Padding(
              // shift body down by height of navigation bar
              padding: EdgeInsets.only(top: navigationBarHeight),
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    Flexible(
                      flex: calculateLateralFlex(constraints.maxWidth),
                      child: Container(),
                    ),
                    Flexible(
                      flex: calculateCenterFlex(constraints.maxWidth),
                      child: widget.page,
                    ),
                    Flexible(
                      flex: calculateLateralFlex(constraints.maxWidth),
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: CustomNavigationBar(
                actions: [
                  CustomAction(
                    title: "Home",
                    routeName: HomePage.routeName,
                  ),
                  CustomAction(
                    title: "About the authors",
                    routeName: AuthorsPage.routeName,
                  ),
                  CustomAction(
                    title: "Management",
                    routeName: "/",
                  ),
                ],
                height: navigationBarHeight,
              ),
            )
          ],
        );
      }),
    );
  }

  int calculateCenterFlex(double screenWidth) {
    return screenWidth < 550
        ? 16
        : screenWidth < 750
            ? 12
            : screenWidth < 1000
                ? 6
                : 4;
  }

  int calculateLateralFlex(double screenWidth) {
    return screenWidth < 550
        ? 0
        : screenWidth < 700
            ? 1
            : screenWidth < 1100
                ? 2
                : 3;
  }
}
