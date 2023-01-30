import 'package:flutter/material.dart';

class StepperCount extends StatelessWidget {
  final String title;
  final int currentStep;
  final List stepsList;
  const StepperCount(
      {Key? key,
      required this.title,
      required this.currentStep,
      required this.stepsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        SizedBox(
            height: 120,
            child: Stepper(
              type: StepperType.horizontal,
              physics: const ScrollPhysics(),
              currentStep: 1,
              controlsBuilder: (context, controller) => const Offstage(),
              steps: <Step>[
                Step(
                  title: const Offstage(),
                  subtitle: Text(stepsList[0].toString()),
                  content: const Offstage(),
                  isActive: currentStep == 0,
                  state: currentStep > 0
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Offstage(),
                  subtitle: Text(stepsList[1].toString()),
                  content: const Offstage(),
                  isActive: currentStep == 1,
                  state: currentStep > 1
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Offstage(),
                  subtitle: Text(stepsList[2].toString()),
                  content: const Offstage(),
                  isActive: currentStep == 2,
                  state: currentStep > 2
                      ? StepState.complete
                      : StepState.disabled,
                ),
                Step(
                  title: const Offstage(),
                  subtitle: Text(stepsList[3].toString()),
                  content: const Offstage(),
                  isActive: currentStep == 3,
                  state: currentStep > 3
                      ? StepState.complete
                      : StepState.disabled,
                ),
              ],
            )),
      ],
    );
  }
}
