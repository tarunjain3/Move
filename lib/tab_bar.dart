import 'package:flutter/material.dart';
import 'orders.dart';

class OrdersTabBar extends StatelessWidget {
  static const routeName = '/home';
  const OrdersTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Loads'),
          bottom: TabBar(
            indicatorColor: const Color(0xFF4FC3F7),
            indicatorWeight: 5,
            labelColor: const Color(0xFF4FC3F7),
            unselectedLabelColor: Colors.black,
            labelStyle: Theme.of(context).textTheme.headline2,
            tabs: const [
              Tab(text: 'Ongoing'),
              Tab(text: 'Past'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
                child: Orders(
              type: 'ongoing',
            )),
            Center(child: Orders(type: 'past')),
          ],
        ),
      ),
    );
  }
}
