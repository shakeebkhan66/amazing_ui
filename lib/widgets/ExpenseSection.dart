import 'package:amazing_ui/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pieChart.dart';

class ExpenseSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Expenses",
              style: TextStyle(
                  fontWeight: FontWeight.w900, fontSize: 20
              ),
            ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses.map((value) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: pieColors[expenses.indexOf(value)],),
                          SizedBox(width: 5,),
                          Text(value["Name"], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    )).toList(),
                  ),
                ),
            ),
            Expanded(
              flex: 4,
                child: pieChart(),
            ),
          ],
        ),
      ],
    );
  }
}