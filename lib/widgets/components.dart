import 'package:edema_calc/widgets/component.dart';
import 'package:edema_calc/widgets/component_option.dart';
import 'package:flutter/material.dart';

class Components extends StatefulWidget {
  const Components({Key? key}) : super(key: key);

  @override
  State<Components> createState() => ComponentsState();
}

class ComponentsState extends State<Components> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Component(
          title: "Effacement",
          description:
              "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
          options: [
            ComponentOptionInput(title: "Yes", score: 0),
            ComponentOptionInput(title: "No", score: 1),
            ComponentOptionInput(title: "Maybe", score: 2),
          ],
        ),
        const Divider(),
        Component(
          title: "Effacement",
          description:
              "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
          options: [
            ComponentOptionInput(title: "Yes", score: 0),
            ComponentOptionInput(title: "No", score: 1),
          ],
        ),
      ],
    );
  }
}
