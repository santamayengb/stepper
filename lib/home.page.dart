import 'package:flutter/material.dart';

import 'package:stepper/widget/stepper.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Setup",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        body: const StepperWidget());
  }
}
