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
              child: SingleChildScrollView(child: widget.page),
            ),
            Positioned(
              top: 0,
              child: CustomNavigationBar(
                actions: [
                  CustomAction(title: "Home", routeName: HomePage.routeName),
                  CustomAction(title: "About the authors", routeName: "/"),
                  CustomAction(title: "Management", routeName: "/"),
                ],
                height: navigationBarHeight,
              ),
            )
          ],
        );
      }),
    );
  }
}
