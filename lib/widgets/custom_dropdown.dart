import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/consts/dropdownContent.dart';
import 'package:edema_calc/widgets/custom_dropdown_button.dart';
import 'package:edema_calc/widgets/custom_dropdown_content.dart';
import 'package:flutter/material.dart';

class DropDownInput {
  final String buttonTitle;
  final Widget content;

  DropDownInput({required this.buttonTitle, required this.content});
}

// TODO: ask Lucas for links for dropdowns

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  _CustomDropdwonState createState() => _CustomDropdwonState();
}

class _CustomDropdwonState extends State<CustomDropdown> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            for (int i = 0; i < dropdownInputs.length; i++)
              Expanded(
                child: CustomDropdownButton(
                  title: dropdownInputs[i].buttonTitle,
                  isFirst: i == 0,
                  isLast: i == dropdownInputs.length - 1,
                  isSelected: selectedIndex == i,
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
                    child: CustomDropdownContent(
                      dropdownInputs[selectedIndex ?? 0].content,
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
