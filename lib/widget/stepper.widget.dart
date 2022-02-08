import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stepper/widget/details.widget.dart';

import 'uploads.widget.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int currentstep = 0;
  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.horizontal,
      currentStep: currentstep,
      steps: getSteps(),
      onStepContinue: _continue,
      onStepCancel: _cancel,
      onStepTapped: _ontapped,
      controlsBuilder: (BuildContext c, ControlsDetails details) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: details.onStepCancel,
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: details.onStepContinue,
              child: const Text('NEXT'),
            ),
          ],
        );
      },
    );
  }

  //Logics--------------------------------------------------
  void _ontapped(index) {
    setState(() {
      currentstep = index;
    });
  }

  void _cancel() {
    final step = getSteps().length - 1;
    if (currentstep == step || currentstep == 0) {
      log(step.toString());
      return;
    }
    setState(() {
      currentstep -= 1;
      log(currentstep.toString());
    });
  }

  void _continue() {
    if (currentstep >= (getSteps().length - 1)) {
      return;
    }
    setState(() {
      currentstep += 1;
      log(currentstep.toString());
    });
  }

  //Steps--------------------------------------------------

  List<Step> getSteps() => [
        Step(
          isActive: currentstep >= 0,
          title: const Text("DETAILS"),
          content: const DetailWidget(),
        ),
        Step(
          isActive: currentstep >= 1,
          title: const Text("UPLOADS"),
          content: const UploadWidget(),
        ),
        Step(
          isActive: currentstep >= 2,
          title: const Text("TIMING"),
          content: Column(),
        ),
      ];
}
