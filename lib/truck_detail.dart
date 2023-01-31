import 'package:flutter/material.dart';

import 'UI/orders/fleet_details.dart';
import 'utils/stepper.dart';

class TruckDetails extends StatelessWidget {
  static const routeName = '/truck-details';
  const TruckDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Truck Detail'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const FleetDetails(),
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Truck and Driver',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Truck Id',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        '35',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Truck Registeration Number',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        'W34567',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Driver Name',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        'Sanchit Nar',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Driver Phone Number',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Text(
                        '9876543210',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const StepperCount(
            title: 'Truck Status',
            currentStep: 3,
            stepsList: [
              'Pickup',
              'In Transit',
              'Dropoff',
              'Delivered',
            ],
          )
        ],
      )),
    );
  }
}
