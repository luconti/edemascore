import 'package:flutter/material.dart';
import 'input.dart';

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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Input(
              color: Colors.blue,
            ),
            SizedBox(
              height: 5,
            ),
            Input(
              color: Colors.green,
            ),
            SizedBox(
              height: 5,
            ),
            Input(
              color: Colors.green,
            ),
            SizedBox(
              height: 5,
            ),
            Input(
              color: Colors.green,
            ),
            SizedBox(
              height: 5,
            ),
            Input(
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
