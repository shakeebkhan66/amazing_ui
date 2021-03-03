import 'package:amazing_ui/data.dart';
import 'package:amazing_ui/widgets/ExpenseSection.dart';
import 'package:flutter/material.dart';

import 'widgets/cardSection.dart';
import 'widgets/header.dart';


void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "EBGaramond",
        ),
        home: HomePage(),
      )
  );
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        children: <Widget>[
          SizedBox(height: 20,),
          Container(
            height: 70,
            child: WalletHeader(),
          ),
          Expanded(child: cardSection()),
          Expanded(child: ExpenseSection()),
        ],
      ),
    );
  }
}