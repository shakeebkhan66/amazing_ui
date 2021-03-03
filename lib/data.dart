

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFCADCED);
List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: Offset(-5, -5),
    blurRadius: 30,
  ),
  BoxShadow(
    color: Colors.blue[900].withOpacity(.2),
    spreadRadius: 2,
    offset: Offset(7, 7),
    blurRadius: 20,
  )
];

List expenses = [
  {"Name": "Groceries", "Amount": "500.0"},
  {"Name": "Online Shopping", "Amount": "100.0"},
  {"Name": "Eating Out", "Amount": "80.0"},
  {"Name": "Bills", "Amount": "50.0"},
  {"Name": "Subscriptions", "Amount": "100.0"},
  {"Name": "Fees", "Amount": "30.0"},
];


 List pieColors = [
  Colors.indigo[400],
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];