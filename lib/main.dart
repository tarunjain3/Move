import 'package:flutter/material.dart';

import 'order_detail.dart';
import 'home_page.dart';
import 'truck_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Move',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFEEEEEE),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (ctx) => const HomePage(),
        OrderDetails.routeName: (ctx) => const OrderDetails(),
        TruckDetails.routeName: (ctx) => const TruckDetails(),
      },
    );
  }
}