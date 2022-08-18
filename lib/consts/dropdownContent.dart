import 'package:bulleted_list/bulleted_list.dart';
import 'package:edema_calc/widgets/custom_dropdown.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

List<DropDownInput> dropdownInputs = [
  DropDownInput(
    buttonTitle: "When to Use",
    content: const Text(
      "    Use the EDEMA score to help quantify the probability of life-threatening mass effect (LTME) in patients presenting with large hemispheric infarctions (LHI) caused by an ischemic stroke involving more than 1⁄2 of the middle cerebral artery (MCA) territory within 24 hours of last known normal (LKN) with a high positive predictive value.",
      style: TextStyle(fontSize: 16),
    ),
  ),
  DropDownInput(
      buttonTitle: "Pearls/Pitfalls",
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Pearls",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          BulletedList(
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              height: 1.1,
            ),
            bullet: Icon(
              Icons.thumb_up_alt_rounded,
              size: 16,
              color: Colors.green.shade900.withOpacity(0.6),
            ),
            listItems: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.1,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "To our knowledge, the EDEMA score was developed from the largest single cohort of patients with malignant edema in the literature at the time ",
                    ),
                    const TextSpan(text: " ("),
                    TextSpan(
                      text: "Ong et at., 2017",
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => html.window.open(
                            "https://pubmed.ncbi.nlm.nih.gov/28487333/",
                            "new tab"),
                    ),
                    TextSpan(text: ")."),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    height: 1.1,
                  ),
                  children: [
                    const TextSpan(
                      text:
                          "The EDEMA score has been externally validated in a cohort of 478 patients in ",
                    ),
                    TextSpan(
                      text: "Cheng et al, 2020",
                      style: const TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => html.window.open(
                            "https://pubmed.ncbi.nlm.nih.gov/31549349/",
                            "new tab"),
                    ),
                    TextSpan(text: "."),
                  ],
                ),
              ),
              "Better identification of patients with moderate to severe risk of developing LTME can inform clinical management such as planning decompressive hemicraniectomies, transfer to tertiary care centers, and improved family discussions.",
              "Increasing EDEMA scores (0-14) indicate a higher probability of LTME.",
              "In patients who received an EDEMA score of ≥ 7, the positive predictive value of LTME was 93%.",
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            "Pitfalls",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          BulletedList(
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              height: 1.1,
            ),
            bullet: Icon(
              Icons.thumb_down_alt_rounded,
              size: 16,
              color: Colors.red.shade900.withOpacity(0.6),
            ),
            listItems: const [
              "This tool is meant to help clinicians stratify a patient’s risk of LTME but does not reflect all or other factors that may influence clinical decision making.",
              "A modified EDEMA score that includes the patient’s NIHSS on admission improved discrimination",
              "Advanced imaging was not included in the EDEMA score because MRI may not be feasible at all centers. The score relies on data readily available to most practitioners within the first 24 hours of stroke.",
              "Presumably not all of the patients in the study who died would have survived with decompressive hemicraniectomy, and therefore our score only identifies those who develop LTME, not those who would benefit from surgery.",
            ],
          )
        ],
      )),
  DropDownInput(
    buttonTitle: "Why Use",
    content: const Text(
      "    Each year, approximately 10% of the ~800,000 Americans hospitalized for ischemic stroke develop clinically significant brain swelling and mass effect within the first week. The risk can be 30-40% in patients with middle cerebral artery (MCA) occlusion.\n\n"
      "    Rapid recognition of patients who will develop LTME after large hemispheric infarction is essential for appropriate triage to tertiary care centers and possible decompressive hemicraniectomy (DHC).",
      style: TextStyle(fontSize: 16),
    ),
  ),
];
