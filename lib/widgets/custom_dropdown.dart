import 'package:edema_calc/consts/buttons.dart';
import 'package:edema_calc/widgets/custom_dropdown_button.dart';
import 'package:edema_calc/widgets/custom_dropdown_content.dart';
import 'package:flutter/material.dart';

class DropDownInput {
  final String buttonTitle;
  final String content;

  DropDownInput({required this.buttonTitle, required this.content});
}

// TODO: ask Lucas for links to studies
List<DropDownInput> dropdownInputs = [
  DropDownInput(
    buttonTitle: "When to Use",
    content:
        "Use the EDEMA score to help quantify the probability of life-threatening mass effect (LTME) in patients presenting with large hemispheric infarctions (LHI) caused by an ischemic stroke involving more than 1⁄2 of the middle cerebral artery (MCA) territory within 24 hours of last known normal (LKN) with a high positive predictive value.",
  ),
  DropDownInput(
    buttonTitle: "Pearls/Pitfalls",
    content: "Pearls:\n\n"
        "    • To our knowledge, the EDEMA score was developed from the largest single cohort of patients with malignant edema in the literature at the time.\n"
        "    • The EDEMA score has been externally validated in a cohort of 478 patients in Cheng et al, 2020.\n"
        "    • Better identification of patients with moderate to severe risk of developing LTME can inform clinical management such as planning decompressive hemicraniectomies, transfer to tertiary care centers, and improved family discussions.\n"
        "    • Increasing EDEMA scores (0-14) indicate a higher probability of LTME.\n"
        "    • In patients who received an EDEMA score of ≥ 7, the positive predictive value of LTME was 93%.\n\n"
        "Pitfalls:\n\n"
        "    • This tool is meant to help clinicians stratify a patient’s risk of LTME but does not reflect all or other factors that may influence clinical decision making.\n"
        "    • A modified EDEMA score that includes the patient’s NIHSS on admission improved discrimination\n"
        "    • Advanced imaging was not included in the EDEMA score because MRI may not be feasible at all centers. The score relies on data readily available to most practitioners within the first 24 hours of stroke.\n"
        "    • Presumably not all of the patients in the study who died would have survived with decompressive hemicraniectomy, and therefore our score only identifies those who develop LTME, not those who would benefit from surgery.\n",
  ),
  DropDownInput(
      buttonTitle: "Why Use",
      content:
          "    Each year, approximately 10% of the ~800,000 Americans hospitalized for ischemic stroke develop clinically significant brain swelling and mass effect within the first week. The risk can be 30-40% in patients with middle cerebral artery (MCA) occlusion.\n\n"
          "    Rapid recognition of patients who will develop LTME after large hemispheric infarction is essential for appropriate triage to tertiary care centers and possible decompressive hemicraniectomy (DHC)."),
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
