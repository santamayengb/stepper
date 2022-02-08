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
        onStepCancel: currentstep != 0 ? _cancel : null,
        onStepTapped: _ontapped,
        controlsBuilder: (BuildContext c, ControlsDetails ctl) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ctl.onStepCancel != null
                  ? ElevatedButton(
                      onPressed: ctl.onStepCancel, child: const Text("BACK"))
                  : Container(),
              const SizedBox(width: 10),
              ElevatedButton(
                  onPressed: ctl.onStepContinue, child: const Text("CONTINUE"))
            ],
          );
        });
  }

  //Logics--------------------------------------------------
  void _ontapped(index) {
    setState(() {
      currentstep = index;
    });
  }

  void _cancel() {
    if (currentstep == 0) {
      return;
    }
    setState(() {
      currentstep -= 1;
      log(currentstep.toString());
    });
  }

  void _continue() {
    if (currentstep > (getSteps().length - 1)) {
      return;
    } else if (currentstep == getSteps().length - 1) {
      setState(() {
        //this is the last step where we can upload the data in the server
        log("submited");
      });
    } else {
      setState(() {
        currentstep += 1;
        log(currentstep.toString());
      });
    }
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
