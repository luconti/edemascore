import 'package:edema_calc/home.dart';
import 'package:edema_calc/template.dart';
import 'package:flutter/material.dart';

class MobileNavigationBar extends StatefulWidget {
  const MobileNavigationBar({
    Key? key,
    required this.scaffoldKey,
    this.height,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;
  final double? height;

  @override
  _MobileNavigationBarState createState() => _MobileNavigationBarState();
}

class _MobileNavigationBarState extends State<MobileNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: widget.height ?? 50,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Row(
          children: [
            InkWell(
              onTap: () => onTapAction(context, HomePage.routeName),
              child: const Text(
                "EDEMA Score",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Flexible(
              child: Container(),
            ),
            IconButton(
              icon: const Icon(Icons.menu_rounded),
              iconSize: screenWidth < 400 ? 25 : 30,
              onPressed: () => widget.scaffoldKey.currentState?.openEndDrawer(),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
