import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/consts/home_dropdown_contents.dart';
import 'package:edema_calc/widgets/custom_dropdown_button.dart';
import 'package:edema_calc/widgets/home_dropdown_content.dart';
import 'package:flutter/material.dart';

class InterventionsDropdown extends StatefulWidget {
  const InterventionsDropdown({Key? key}) : super(key: key);

  @override
  _InterventionsDropdownState createState() => _InterventionsDropdownState();
}

class _InterventionsDropdownState extends State<InterventionsDropdown> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            // extract into widget
            Column(
              children: [
                // TITLE
                CustomDropdownButton(
                    title: "title",
                    callback: () {},
                    isFirst: true,
                    isLast: false,
                    isSelected: false),
                // CONTENT IS ANOTHER COLUMN THAT gets displayed dinamically
                Container(),
              ],
            ),
            Column(
              children: [
                CustomDropdownButton(
                    title: "title",
                    callback: () {},
                    isFirst: true,
                    isLast: false,
                    isSelected: false),
                Container(),
              ],
            )
          ],
        )
        // for (int i = 0; i < dropdownInputs.length; i++)
        //   Expanded(
        //     child: InterventionsDropdownButton(
        //       title: dropdownInputs[i].buttonTitle,
        //       isFirst: i == 0,
        //       isLast: i == dropdownInputs.length - 1,
        //       isSelected: selectedIndex == i,
        //       callback: () {
        //         setState(() {
        //           if (selectedIndex == i) {
        //             selectedIndex = null;
        //           } else {
        //             selectedIndex = i;
        //           }
        //         });
        //       },
        //     ),
        //   ),
        // // TODO: animate
        // // TODO: edit padding
        // selectedIndex != null
        //     ? Row(
        //         children: [
        //           Expanded(
        //             child: InterventionsDropdownContent(
        //               dropdownInputs[selectedIndex ?? 0].content,
        //             ),
        //           ),
        //         ],
        //       )
        //     : Container(),
      ],
    );
  }
}
