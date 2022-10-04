import 'package:edema_calc/consts/actions.dart';
import 'package:edema_calc/widgets/custom_navigation_bar.dart';
import 'package:edema_calc/widgets/drawer.dart';
import 'package:edema_calc/widgets/mobile_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageTemplate extends StatefulWidget {
  PageTemplate({Key? key, required this.page, this.lateralFlex})
      : super(key: key);

  final Widget page;
  int? lateralFlex;
  static String routeName = "/";

  @override
  State<PageTemplate> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  final double navigationBarHeight = 50;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomDrawer(),
      key: scaffoldKey,
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Padding(
              // shift body down by height of navigation bar
              padding: EdgeInsets.only(top: navigationBarHeight),
              child: Row(
                children: [
                  Flexible(
                    flex: widget.lateralFlex ??
                        calculateLateralFlex(constraints.maxWidth),
                    child: Container(),
                  ),
                  Flexible(
                    flex: calculateCenterFlex(constraints.maxWidth),
                    child: SizedBox(
                      width: constraints.maxWidth,
                      child: widget.page,
                    ),
                  ),
                  Flexible(
                    flex: widget.lateralFlex ??
                        calculateLateralFlex(constraints.maxWidth),
                    child: Container(),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              child: constraints.maxWidth > 700
                  ? CustomNavigationBar(
                      actions: actions,
                      height: navigationBarHeight,
                    )
                  : MobileNavigationBar(
                      scaffoldKey: scaffoldKey,
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
    return screenWidth < 700
        ? 1
        : screenWidth < 1100
            ? 2
            : 3;
  }
}

void onTapAction(BuildContext context, String routeName) {
  if (ModalRoute.of(context)?.settings.name != routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
