import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/widgets/custom_dropdown_button.dart';
import 'package:edema_calc/widgets/custom_dropdown_content.dart';
import 'package:flutter/material.dart';

class DropDownInput {
  final String buttonTitle;
  final String content;

  DropDownInput({required this.buttonTitle, required this.content});
}

// TODO: update content for other fields
List<DropDownInput> dropdownInputs = [
  DropDownInput(
    buttonTitle: "When to Use",
    content:
        "Use the EDEMA score to help quantify the probability of life-threatening mass effect (LTME) in patients presenting with large hemispheric infarctions (LHI) caused by an ischemic stroke involving more than 1⁄2 of the middle cerebral artery (MCA) territory within 24 hours of last known normal (LKN) with a high positive predictive value.",
  ),
  DropDownInput(
    buttonTitle: "Pearls/Pitfalls",
    content: "second content",
  ),
  DropDownInput(
    buttonTitle: "Why Use",
    content: "Third content",
  ),
];

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
              Flexible(
                flex: 1,
                child: CustomDropdownButton(
                  isFirst: i == 0,
                  isLast: i == dropdownInputs.length - 1,
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
        // TODO: extract this into another component
        // TODO: animate
        // TODO: edit padding
        selectedIndex != null
            ? Row(
                children: [
                  Expanded(
                    child: CustomDropdownContent(
                      content: dropdownInputs[selectedIndex ?? 0].content,
                    ),
                  ),
                ],
              )
            : Container(),
      ],
    );
  }
}
