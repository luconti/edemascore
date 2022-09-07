import 'package:bulleted_list/bulleted_list.dart';
import 'package:edema_calc/template.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';

class InterventionsPage extends StatelessWidget {
  const InterventionsPage({Key? key}) : super(key: key);
  static String routeName = "/interventions";
  final double navigationBarHeight = 50;

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      page: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 40, bottom: 40),
              child: PageTitle("Recommended Interventions"),
            ),
          ),
          buildStrongRecommendations(),
          const SizedBox(height: 20),
          buildConditionalRecommendations(),
          const SizedBox(height: 20),
          buildNotRecommendedRecommendations(),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget buildNotRecommendedRecommendations() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange.withOpacity(0.6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Interventions not Recommended:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "1. Ventilation Strategies:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Prophylactic hyperventilation is not recommended (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "2. Fluid Goals:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Hypotonic or hypo-osmolar fluids are not recommended (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "3. Glycemic Control:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Hypoglycemia should be avoided at all times (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "4. Anticoagulation:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Intravenous heparin or combination antiplatelet agents are not recommended in patients with swollen strokes (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "5. Intracranial Pressure Monitoring:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Routine ICP monitoring is not indicated in hemispheric ischemic stroke (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "6. Seizure prophylaxis:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Seizure prophylaxis in patients without seizures at presentation is not indicated (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "7. Other interventions:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. There is insufficient data on the effect of hypothermia, barbiturates, and corticosteroids in the setting of ischemic cerebral or cerebellar swelling, and they are not recommended (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildConditionalRecommendations() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.6),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Conditional Recommendations (Class IIb):",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "1. Surgical Intervention:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. The efficacy of decompressive craniectomy in patients >60 years of age and the optimal timing of surgery are uncertain (Class IIb; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "2. Osmotic Therapy:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Use of prophylactic osmotic diuretics before apparent swelling is not recommended (Class III; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "3. Blood Pressure Control:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. There is insufficient data to recommend a specific systolic or mean arterial blood pressure target. Blood pressure-lowering drugs may be considered for the treatment of extreme hypertension. Specific blood pressure targets are not established (Class IIb; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "4. Fluid Goals:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Use of adequate fluid administration with isotonic fluids might be considered (Class IIb; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "5. Airway and Ventilation Strategies:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Intubation may be considered for patients with decreased levels of consciousness resulting in poor oxygenation or impaired control of secretions (Class IIb; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "2. Maintaining normocarbia is reasonable (Class IIa; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "6. Glycemic Control:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Tight glycemic control (glucose < 110 mg/dL) is not indicated, but an insulin infusion may be used to avoid significant hyperglycemia (Class IIb; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "7. Temperature management:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. A normal temperature is reasonable (Class IIa; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "2. The effectiveness of the use of therapeutic hypothermia before brain swelling is not known (Class IIb; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
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
          children: const [
            Text(
              "Class I-IIA (strong) recommendations:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "1. Neuromonitoring:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Clinicians should frequently monitor level of arousal and ipsilateral pupillary dilation in patients with supratentorial ischemic stroke at high risk for deterioration. Gradual development of midposition pupils and worsening of motor response may also indicate deterioration (Class I; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "2. Surgical Intervention::",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. In patients < 60 years of age with unilateral MCA infarctions that deteriorate neurologically within 48 hours despite medical therapy, decompressive craniectomy with dural expansion is effective. The effect of later decompression is not known, but it should be strongly considered (Class I; Level of Evidence B).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "2. Although the optimal trigger for decompressive craniectomy is unknown, it is reasonable to use a decrease in level of consciousness and its attribution to brain swelling as selection criteria (Class IIa; Level of Evidence A).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "3. Osmotic Therapy:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Osmotic therapy for patients with clinical deterioration from cerebral swelling associated with cerebral infarction is reasonable (Class IIa; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "4. Glycemic Control:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Hyperglycemia should be avoided, and glucose levels between 140 and 180 mg/dL are recommended (Class I; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 10),
            Text(
              "5. DVT Prophylaxis:",
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                "1. Deep venous thrombosis prophylaxis with subcutaneous or low-molecular-weight heparin should be used (Class I; Level of Evidence C).",
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
