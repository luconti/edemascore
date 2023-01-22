import 'package:edema_calc/consts/actions.dart';
import 'package:edema_calc/widgets/custom_navigation_bar.dart';
import 'package:edema_calc/widgets/drawer.dart';
import 'package:edema_calc/widgets/mobile_navigation_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PageTemplate extends StatefulWidget {
  PageTemplate({
    Key? key,
    required this.page,
    this.stickyHeader,
    this.footer,
    this.lateralFlex,
  }) : super(key: key);

  final Widget page;
  final Widget? stickyHeader;
  final Widget? footer;
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
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          lateralPadding(constraints.maxWidth),
                          Flexible(
                            flex: calculateCenterFlex(constraints.maxWidth),
                            child: Column(
                              children: [
                                // sticky header
                                widget.stickyHeader ?? Container(),
                                // body
                                SizedBox(
                                  height: constraints.maxHeight -
                                      navigationBarHeight,
                                  child: SingleChildScrollView(
                                    child: widget.page,
                                  ),
                                ),
                                // footer
                                widget.footer ?? Container(),
                              ],
                            ),
                          ),
                          lateralPadding(constraints.maxWidth),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              child: constraints.maxWidth > 850
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

  Widget lateralPadding(double maxWidth) {
    return Flexible(
      flex: widget.lateralFlex ?? calculateLateralFlex(maxWidth),
      child: Container(),
    );
  }

  int calculateCenterFlex(double screenWidth) {
    return screenWidth < 550
        ? 30
        : screenWidth < 750
            ? 13
            : screenWidth < 1000
                ? 7
                : 5;
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
