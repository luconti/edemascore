import 'package:bulleted_list/bulleted_list.dart';
import 'package:edema_calc/template.dart';
import 'package:edema_calc/widgets/interventions_dropdown.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';

class InterventionsPage extends StatelessWidget {
  const InterventionsPage({Key? key}) : super(key: key);
  static String routeName = "/interventions";
  final double navigationBarHeight = 50;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return PageTemplate(
      lateralFlex: 0,
      page: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            const Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 40, bottom: 40),
                child: PageTitle("Recommended Interventions"),
              ),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Airway and Ventilation Strategies",
                  strongRecommendations: [],
                  conditionalRecommendations: [
                    "Intubation may be considered for patients with decreased levels of consciousness resulting in poor oxygenation or impaired control of secretions (Class IIb; Level of Evidence C).",
                    "Maintaining normocarbia is reasonable (Class IIa; Level of Evidence C).",
                  ],
                  notRecommended: [
                    "Prophylactic hyperventilation is not recommended (Class III; Level of Evidence C).",
                  ]),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Anticoagulation",
                  strongRecommendations: [],
                  conditionalRecommendations: [],
                  notRecommended: [
                    "Intravenous heparin or combination antiplatelet agents are not recommended in patients with swollen strokes (Class III; Level of Evidence C)."
                  ]),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Blood Pressure Control",
                  strongRecommendations: [],
                  conditionalRecommendations: [
                    "There is insufficient data to recommend a specific systolic or mean arterial blood pressure target. Blood pressure-lowering drugs may be considered for the treatment of extreme hypertension. Specific blood pressure targets are not established (Class IIb; Level of Evidence C)."
                  ],
                  notRecommended: []),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "DVT Prophylaxis",
                  strongRecommendations: [
                    "Deep venous thrombosis prophylaxis with subcutaneous or low-molecular-weight heparin should be used (Class I; Level of Evidence C)."
                  ],
                  conditionalRecommendations: [],
                  notRecommended: [
                    "There is insufficient data on the effect of hypothermia, barbiturates, and corticosteroids in the setting of ischemic cerebral or cerebellar swelling, and they are not recommended (Class III; Level of Evidence C)."
                  ]),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Fluid Goals",
                  strongRecommendations: [],
                  conditionalRecommendations: [
                    "Use of adequate fluid administration with isotonic fluids might be considered (Class IIb; Level of Evidence C)."
                  ],
                  notRecommended: []),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Intracranial Pressure Monitoring",
                  strongRecommendations: [],
                  conditionalRecommendations: [],
                  notRecommended: [
                    "Routine ICP monitoring is not indicated in hemispheric ischemic stroke (Class III; Level of Evidence C)."
                  ]),
            ),

            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Glycemic Control",
                  strongRecommendations: [
                    "Hyperglycemia should be avoided, and glucose levels between 140 and 180 mg/dL are recommended (Class I; Level of Evidence C)."
                  ],
                  conditionalRecommendations: [
                    "Tight glycemic control (glucose < 110 mg/dL) is not indicated, but an insulin infusion may be used to avoid significant hyperglycemia (Class IIb; Level of Evidence C).",
                  ],
                  notRecommended: [
                    "Hypoglycemia should be avoided at all times (Class III; Level of Evidence C)."
                  ]),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Osmotic Therapy",
                  strongRecommendations: [
                    "Osmotic therapy for patients with clinical deterioration from cerebral swelling associated with cerebral infarction is reasonable (Class IIa; Level of Evidence C)."
                  ],
                  conditionalRecommendations: [
                    "Use of prophylactic osmotic diuretics before apparent swelling is not recommended (Class III; Level of Evidence C).",
                  ],
                  notRecommended: []),
            ),

            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Neuromonitoring",
                  strongRecommendations: [
                    "Clinicians should frequently monitor level of arousal and ipsilateral pupillary dilation in patients with supratentorial ischemic stroke at high risk for deterioration. Gradual development of midposition pupils and worsening of motor response may also indicate deterioration (Class I; Level of Evidence C).",
                  ],
                  conditionalRecommendations: [],
                  notRecommended: []),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Other interventions",
                  strongRecommendations: [],
                  conditionalRecommendations: [],
                  notRecommended: [
                    "There is insufficient data on the effect of hypothermia, barbiturates, and corticosteroids in the setting of ischemic cerebral or cerebellar swelling, and they are not recommended (Class III; Level of Evidence C)."
                  ]),
            ),

            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Seizure prophylaxis",
                  strongRecommendations: [],
                  conditionalRecommendations: [],
                  notRecommended: [
                    "Seizure prophylaxis in patients without seizures at presentation is not indicated (Class III; Level of Evidence C)."
                  ]),
            ),
            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Surgical Intervention",
                  strongRecommendations: [
                    "In patients < 60 years of age with unilateral MCA infarctions that deteriorate neurologically within 48 hours despite medical therapy, decompressive craniectomy with dural expansion is effective. The effect of later decompression is not known, but it should be strongly considered (Class I; Level of Evidence B).",
                    "Although the optimal trigger for decompressive craniectomy is unknown, it is reasonable to use a decrease in level of consciousness and its attribution to brain swelling as selection criteria (Class IIa; Level of Evidence A)."
                  ],
                  conditionalRecommendations: [
                    "The efficacy of decompressive craniectomy in patients >60 years of age and the optimal timing of surgery are uncertain (Class IIb; Level of Evidence C)."
                  ],
                  notRecommended: []),
            ),

            InterventionsDropdown(
              content: InterventionsDroppdownContent(
                  title: "Temperature management",
                  strongRecommendations: [],
                  conditionalRecommendations: [
                    "A normal temperature is reasonable (Class IIa; Level of Evidence C).",
                    "The effectiveness of the use of therapeutic hypothermia before brain swelling is not known (Class IIb; Level of Evidence C)."
                  ],
                  notRecommended: []),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
