import 'package:amazing_ui/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WalletHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Shakeeb Khan's Wallet", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              boxShadow: customShadow,
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Icon(
                      Icons.notifications
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}