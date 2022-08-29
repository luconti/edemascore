import 'package:edema_calc/template.dart';
import 'package:edema_calc/widgets/title.dart';
import 'package:flutter/material.dart';

class AuthorsPage extends StatelessWidget {
  const AuthorsPage({Key? key}) : super(key: key);
  static String routeName = "/authors";
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
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/author.jpg"),
                radius: 100,
              ),
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: PageTitle("Charlene Ong, MD, MPHS"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Biography",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "Charlene Ong, MD, MPHS, received her undergraduate degree at University of Pennsylvania, her MD at Columbia University and her Master’s in Population Health Sciences at Washington University School of Medicine. She is an Assistant Professor of Neurology at Boston University and a clinical Neurointensive Care Physician at Boston Medical Center. She is also a Visiting Assistant Professor at Harvard Medical School and Massachusetts Institute of Technology. Her research focuses on the development and validation of data-driven tools to support clinical decision making in patients with catastrophic neurologic injury including ischemic and hemorrhagic stroke, traumatic brain injury and anoxic brain injury. She has received foundational support from the American Brain Foundation, Philips-MIT, and the Peter-Paul Career Development Committee. She is additionally supported by Boston University CTSI through a pilot grant and a KL2. Her aim is to build a robust ICU data science program and follow a K-track path toward the eventual goal of becoming an independently funded researcher and recognized leader in the field.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          const Divider(thickness: 0.1, color: Colors.black),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Other Positions",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 16),
                  text: "Assistant Professor, ",
                  children: [
                    TextSpan(
                      text:
                          "Neurosurgery, Boston University School of Medicine",
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(fontSize: 16),
                  text: "Visiting Scientist, ",
                  children: [
                    TextSpan(
                      text: "Massachusetts Institute of Technologyr",
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    )
                  ]),
            ),
          ),
          const Divider(thickness: 0.1, color: Colors.black),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Education",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Columbia University College of Physicians and Surgeons, MD",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "University of Pennsylvania, BA",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "University of Pennsylvania, BS",
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
