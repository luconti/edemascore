import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({Key? key, required this.color}) : super(key: key);

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
            Flexible(flex: 1, child: Container()),
            Flexible(
              flex: calculateFlex(constraints),
              child: Container(
                color: Colors.yellow,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("Title"),
                    Text(
                      "descriptiondescriptiondescriptiondescriptiondescriptiondescription",
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: calculateFlex(constraints),
              child: Container(
                color: Colors.yellow[50],
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          // TODO: only add radius to top and bottom buttons
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {},
                      child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          // TODO: only add radius to top and bottom buttons
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Flexible(flex: 1, child: Container()),
          ],
        );
      }),
    );
  }
}

int calculateFlex(BoxConstraints constraints) {
  return constraints.maxWidth < 400
      ? 7
      : constraints.maxWidth < 600
          ? 5
          : constraints.maxWidth < 1000
              ? 3
              : 1;
}
