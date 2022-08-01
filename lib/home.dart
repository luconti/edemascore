import 'package:flutter/material.dart';
import 'widgets/input.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Row(
            children: [
              Flexible(flex: 1, child: Container()),
              Flexible(
                flex: calculateFlex(constraints),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Input(
                      title: "Effacement",
                      description:
                          "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
                      color: Colors.blue,
                    ),
                    Divider(),
                    Input(
                      title: "Effacement",
                      description:
                          "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
                      color: Colors.green,
                    ),
                    Divider(),
                    Input(
                      title: "Effacement",
                      description:
                          "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
                      color: Colors.green,
                    ),
                    Divider(),
                    Input(
                      title: "Effacement",
                      description:
                          "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
                      color: Colors.green,
                    ),
                    Divider(),
                    Input(
                      title: "Effacement",
                      description:
                          "Lorem epsum yorm epsum yorm epsum yorm epsum yorm epsum yorm",
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Flexible(flex: 1, child: Container()),
            ],
          ),
        );
      }),
    );
  }
}

int calculateFlex(BoxConstraints constraints) {
  return constraints.maxWidth < 400
      ? 14
      : constraints.maxWidth < 600
          ? 10
          : constraints.maxWidth < 1000
              ? 6
              : 2;
}