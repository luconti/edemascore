import 'package:edema_calc/widgets/component_option.dart';
import 'package:edema_calc/widgets/component_options.dart';
import 'package:flutter/material.dart';

class Component extends StatelessWidget {
  const Component({
    Key? key,
    required this.title,
    required this.description,
    required this.color,
  }) : super(key: key);

  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: color,
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Row(
          children: [
            Flexible(
              child: Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.yellow[50],
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: ComponentOptions(
                  options: [
                    ComponentOptionInput(title: "Effacement", score: 0)
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
