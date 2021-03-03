import 'package:amazing_ui/data.dart';
import 'package:amazing_ui/widgets/cardDetails.dart';
import 'package:flutter/material.dart';

class cardSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
            child: Text("Card Selected", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
        ),
        Expanded(
           child: ListView.builder(
             itemCount: 2,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, i){
               return Container(
                 width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                 decoration: BoxDecoration(
                   color: primaryColor,
                   boxShadow: customShadow,
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: Stack(
                   children: <Widget>[
                     Positioned.fill(
                       top: 150,
                       bottom: -200,
                       child: Container(
                         decoration: BoxDecoration(
                           boxShadow: customShadow,
                           shape: BoxShape.circle,
                           color: Colors.white24,
                         ),
                       ),
                     ),
                     
                     Positioned.fill(
                       left: -300,
                         top: -100,
                         bottom: -100,
                         child: Container(
                           decoration: BoxDecoration(
                             boxShadow: customShadow,
                             shape: BoxShape.circle,
                             color: Colors.white38,
                           ),
                         ),
                     ),
                      cardDetails(),
                   ],
                 ),
               );
               }
           ),
        ),
      ],
    );
  }
}