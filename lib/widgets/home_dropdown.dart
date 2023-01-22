import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/consts/home_dropdown_contents.dart';
import 'package:edema_calc/widgets/custom_dropdown_button.dart';
import 'package:edema_calc/widgets/home_dropdown_content.dart';
import 'package:flutter/material.dart';

// TODO: ask Lucas for links for dropdowns

class HomeDropdown extends StatefulWidget {
  const HomeDropdown({Key? key}) : super(key: key);

  @override
  _HomeDropdownState createState() => _HomeDropdownState();
}

class _HomeDropdownState extends State<HomeDropdown> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            for (int i = 0; i < homeDropdownContents.length; i++)
              Expanded(
                child: CustomDropdownButton(
                  title: homeDropdownContents[i].buttonTitle,
                  isFirst: i == 0,
                  isLast: i == homeDropdownContents.length - 1,
                  isSelected: selectedIndex == i,
                  verticallyStacked: false,
                  callback: () {
                    setState(() {
                      if (selectedIndex == i) {
                        selectedIndex = null;
                      } else {
                        selectedIndex = i;
                      }
                    });
                  },
                ),
              )
          ],
        ),
        // TODO: animate
        // TODO: edit padding
        selectedIndex != null
            ? Row(
                children: [
                  Expanded(
                    child: HomeDropdownContent(
                      homeDropdownContents[selectedIndex ?? 0].content,
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
