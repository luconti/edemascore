import 'package:bulleted_list/bulleted_list.dart';
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
            Column(
              // TOOD: extract pair CustomDropdownButton and Column into widget
              children: [
                // TITLE
                // TODO: cusomize
                CustomDropdownButton(
                  title: "Neuromonitoring",
                  callback: () {},
                  isFirst: true,
                  isLast: false,
                  isSelected: false,
                  verticallyStacked: true,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                // CONTENT IS ANOTHER COLUMN THAT gets displayed dinamically
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    // TODO: extract pair of Text and Bulleted list into widget
                    Text(
                      "Class I-IIA (strong) recommendations:",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BulletedList(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        height: 1.1,
                      ),
                      bullet: Icon(
                        Icons.add_circle_outline,
                        size: 16,
                        color: Colors.black,
                      ),
                      listItems: [
                        "Clinicians should frequently monitor level of arousal and ipsilateral pupillary dilation in patients with supratentorial ischemic stroke at high risk for deterioration. Gradual development of midposition pupils and worsening of motor response may also indicate deterioration (Class I; Level of Evidence C).",
                      ],
                    ),
                  ],
                )
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
