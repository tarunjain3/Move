import 'package:flutter/material.dart';
import './data/orders.dart';
import './model/order.dart';

class Orders extends StatelessWidget {
  final String type;
  const Orders({Key? key, required this.type}) : super(key: key);
  List<Order> getOrders() {
    if (type == 'past') {
      return allOrdersList
          .where((order) => order.status == 'Completed')
          .toList();
    } else {
      return allOrdersList
          .where((order) => order.status != 'Completed')
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Order> ordersList = getOrders();
    return ListView.builder(
      itemCount: ordersList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (() {
            Navigator.pushNamed(context, '/order-details',
                arguments: ordersList[index]);
          }),
          child: Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ordersList[index].price,
                        style: TextStyle(
                          color: const Color(0xFF616161),
                          fontSize: ordersList[index].price != 'Price Pending'
                              ? 16
                              : 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: const BoxDecoration(
                          color: Color(0xFFBBDEFB),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Text(ordersList[index].status,
                            style: Theme.of(context).textTheme.headline3),
                      )
                    ],
                  ),
                  ListTile(
                    title: Text(ordersList[index].delivery.toString()),
                    subtitle: Text(ordersList[index].pickupDate.toString()),
                    iconColor: Colors.black,
                    dense: true,
                    minVerticalPadding: 0,
                    minLeadingWidth: 15,
                    contentPadding: const EdgeInsets.all(0),
                    leading: const Icon(Icons.location_on_rounded),
                  ),
                  ListTile(
                    title: Text(ordersList[index].pickup.toString()),
                    subtitle: Text(ordersList[index].deliveryDate.toString()),
                    iconColor: Colors.black,
                    minVerticalPadding: 0,
                    dense: true,
                    minLeadingWidth: 15,
                    contentPadding: const EdgeInsets.all(0),
                    leading: const Icon(Icons.flag_rounded),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          '${ordersList[index].quantity} Tonne | ${ordersList[index].material} | ${ordersList[index].vehicle}',
                          style: Theme.of(context).textTheme.headline3),
                      IconButton(
                        onPressed: (() {
                          print('Pressed');
                        }),
                        icon: const Icon(Icons.arrow_forward_rounded),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
