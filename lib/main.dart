import 'package:flutter/material.dart';
import 'package:yunistore/ui/new_orders_page.dart';
import 'package:yunistore/ui/orders_page.dart';

void main() {
  runApp(MaterialApp(
    home: NewOrdersPage(),
  ));
}


// 1. Error
// 2. no order / no data
// 3. Waiting / Loader
// 4. Data received 