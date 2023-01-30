import 'package:flutter/material.dart';

import 'fleet_details.dart';
import 'stepper.dart';

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
                  const Text(
                    'Truck and Driver',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Truck Id',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        '35',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Truck Registeration Number',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        'W34567',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Driver Name',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        'Sanchit Nar',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Driver Phone Number',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        '9876543210',
                        style: TextStyle(fontSize: 16, color: Colors.black87),
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
