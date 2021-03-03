import 'dart:math';
import 'dart:ui';
import 'package:amazing_ui/data.dart';
import 'package:amazing_ui/widgets/ExpenseSection.dart';
import 'package:flutter/material.dart';

import 'PieChartPainter.dart';

class pieChart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: customShadow,
          color: primaryColor,
        ),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
            ),
        Center(
          child: Container(
            height: 70, width: 70,
            child: Center(child: Text("\$7892", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: customShadow,
            color: primaryColor,
          ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}


class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width/2,size.height/2);
    double radius = min(size.width/2,size.height/2);
    double total=0;
    double startRadian=-pi/2;
    var paint = new Paint()
      ..style=PaintingStyle.stroke
      ..strokeWidth=10;

    expenses.forEach((element) {
      total+=element["Amount"];
    });
    for(var i=0;i<expenses.length;i++){
      final currentExpense=expenses[i];
      final sweepRadian=(currentExpense["Amount"]/total)*2*pi;
      paint.color=pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
      startRadian+=sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
