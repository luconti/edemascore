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
      //lateralFlex: 0,
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
            const InterventionsDropdown(),
            screenWidth > 700
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: screenWidth / 3 - 20,
                        child: buildStrongRecommendations(),
                      ),
                      SizedBox(
                        width: screenWidth / 3 - 20,
                        child: buildConditionalRecommendations(),
                      ),
                      SizedBox(
                        width: screenWidth / 3 - 20,
                        child: buildNotRecommendedRecommendations(),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      buildStrongRecommendations(),
                      const SizedBox(height: 20),
                      buildConditionalRecommendations(),
                      const SizedBox(height: 20),
                      buildNotRecommendedRecommendations(),
                      const SizedBox(height: 20),
                    ],
                  ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildBulletList(List<String> listItems) {
    return BulletedList(
        style: const TextStyle(
          fontSize: 17,
          color: Colors.black,
          height: 1.1,
        ),
        bullet: Container(
          height: 7,
          width: 7,
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
        listItems: listItems);
  }

  Widget buildNotRecommendedRecommendations() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red.withOpacity(0.6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Interventions not Recommended:",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Ventilation Strategies:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Prophylactic hyperventilation is not recommended (Class III; Level of Evidence C).",
            ]),
            const Text(
              "Fluid Goals:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Hypotonic or hypo-osmolar fluids are not recommended (Class III; Level of Evidence C)."
            ]),
            const Text(
              "Glycemic Control:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Hypoglycemia should be avoided at all times (Class III; Level of Evidence C)."
            ]),
            const Text(
              "Anticoagulation:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Intravenous heparin or combination antiplatelet agents are not recommended in patients with swollen strokes (Class III; Level of Evidence C)."
            ]),
            const Text(
              "Intracranial Pressure Monitoring:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Routine ICP monitoring is not indicated in hemispheric ischemic stroke (Class III; Level of Evidence C)."
            ]),
            const Text(
              "Seizure prophylaxis:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Seizure prophylaxis in patients without seizures at presentation is not indicated (Class III; Level of Evidence C)."
            ]),
            const Text(
              "Other interventions:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "There is insufficient data on the effect of hypothermia, barbiturates, and corticosteroids in the setting of ischemic cerebral or cerebellar swelling, and they are not recommended (Class III; Level of Evidence C)."
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildConditionalRecommendations() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow.withOpacity(0.6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Conditional Recommendations (Class IIb):",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Surgical Intervention:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "The efficacy of decompressive craniectomy in patients >60 years of age and the optimal timing of surgery are uncertain (Class IIb; Level of Evidence C)."
            ]),
            const Text(
              "Osmotic Therapy:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Use of prophylactic osmotic diuretics before apparent swelling is not recommended (Class III; Level of Evidence C)."
            ]),
            const Text(
              "Blood Pressure Control:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "There is insufficient data to recommend a specific systolic or mean arterial blood pressure target. Blood pressure-lowering drugs may be considered for the treatment of extreme hypertension. Specific blood pressure targets are not established (Class IIb; Level of Evidence C)."
            ]),
            const Text(
              "Fluid Goals:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Use of adequate fluid administration with isotonic fluids might be considered (Class IIb; Level of Evidence C)."
            ]),
            const Text(
              "Airway and Ventilation Strategies:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Intubation may be considered for patients with decreased levels of consciousness resulting in poor oxygenation or impaired control of secretions (Class IIb; Level of Evidence C).",
              "Maintaining normocarbia is reasonable (Class IIa; Level of Evidence C).",
            ]),
            const Text(
              "Glycemic Control:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Tight glycemic control (glucose < 110 mg/dL) is not indicated, but an insulin infusion may be used to avoid significant hyperglycemia (Class IIb; Level of Evidence C).",
            ]),
            const Text(
              "Temperature management:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "A normal temperature is reasonable (Class IIa; Level of Evidence C).",
              "The effectiveness of the use of therapeutic hypothermia before brain swelling is not known (Class IIb; Level of Evidence C)."
            ]),
          ],
        ),
      ),
    );
  }

  Widget buildStrongRecommendations() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Class I-IIA (strong) recommendations:",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Neuromonitoring:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Clinicians should frequently monitor level of arousal and ipsilateral pupillary dilation in patients with supratentorial ischemic stroke at high risk for deterioration. Gradual development of midposition pupils and worsening of motor response may also indicate deterioration (Class I; Level of Evidence C)."
            ]),
            const Text(
              "Surgical Intervention::",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "In patients < 60 years of age with unilateral MCA infarctions that deteriorate neurologically within 48 hours despite medical therapy, decompressive craniectomy with dural expansion is effective. The effect of later decompression is not known, but it should be strongly considered (Class I; Level of Evidence B).",
              "Although the optimal trigger for decompressive craniectomy is unknown, it is reasonable to use a decrease in level of consciousness and its attribution to brain swelling as selection criteria (Class IIa; Level of Evidence A)."
            ]),
            const Text(
              "Osmotic Therapy:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Osmotic therapy for patients with clinical deterioration from cerebral swelling associated with cerebral infarction is reasonable (Class IIa; Level of Evidence C)."
            ]),
            const Text(
              "Glycemic Control:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Hyperglycemia should be avoided, and glucose levels between 140 and 180 mg/dL are recommended (Class I; Level of Evidence C)."
            ]),
            const Text(
              "DVT Prophylaxis:",
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
            buildBulletList([
              "Deep venous thrombosis prophylaxis with subcutaneous or low-molecular-weight heparin should be used (Class I; Level of Evidence C)."
            ]),
          ],
        ),
      ),
    );
  }
}
