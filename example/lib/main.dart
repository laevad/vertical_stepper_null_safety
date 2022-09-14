import 'package:flutter/material.dart';
import 'package:vertical_stepper_null_safety/vertical_stepper_null_safety.dart'
    as step;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Create a list of stepper

    List<step.Step> _stepper = [
      step.Step(
        shimmer: false,
        title: "first",
        iconStyle: Colors.green,
        content: Align(
          alignment: Alignment.centerLeft,
          child: Text("Content 1"),
        ),
      ),
      step.Step(
        shimmer: false,
        title: "second",
        iconStyle: Colors.green,
        content: Align(
          alignment: Alignment.centerLeft,
          child: Text("Content 2"),
        ),
      ),
      step.Step(
        shimmer: false,
        title: "third",
        iconStyle: Colors.green,
        content: Align(
          alignment: Alignment.centerLeft,
          child: Text("Content 3"),
        ),
      ),
      step.Step(
        shimmer: false,
        title: "fourth",
        iconStyle: Colors.green,
        content: Align(
          alignment: Alignment.centerLeft,
          child: Text("Content 4"),
        ),
      ),
      step.Step(
        shimmer: false,
        title: "fifth",
        iconStyle: Colors.red,
        content: Align(
          alignment: Alignment.centerLeft,
          child: Text("Content 5"),
        ),
      ),
      step.Step(
        shimmer: false,
        title: "Last",
        content: Align(
          alignment: Alignment.centerLeft,
          child: Text("Content 6"),
        ),
      )
    ];

    //Pass the list of steppers into VerticalStepper class

    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 130, 10, 2),
      child: step.VerticalStepper(
        steps: _stepper,
        dashLength: 2,
      ),
    ));
  }
}
