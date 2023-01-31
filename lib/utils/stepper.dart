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
            height: 80,
            child: Stepper(
                type: StepperType.horizontal,
                physics: const ScrollPhysics(),
                currentStep: 1,
                controlsBuilder: (context, controller) => const Offstage(),
                steps: List.generate(
                  stepsList.length,
                  (index) => Step(
                    title: const Offstage(),
                    subtitle: Text(stepsList[index].toString()),
                    content: const Offstage(),
                    isActive: currentStep == index,
                    state: currentStep > index
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ))),
      ],
    );
  }
}
