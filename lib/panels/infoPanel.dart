import 'package:covid19_app/datasource.dart';
import 'package:flutter/material.dart';

class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical:12, horizontal:10),
            margin: EdgeInsets.symmetric(vertical:5,horizontal:10),
            color: primaryBlack,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'FAQS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.arrow_forward, color: Colors.white,),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical:12, horizontal:10),
            margin: EdgeInsets.symmetric(vertical:5,horizontal:10),
            color: primaryBlack,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'DONATE',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.arrow_forward, color: Colors.white,),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical:12, horizontal:10),
            margin: EdgeInsets.symmetric(vertical:5,horizontal:10),
            color: primaryBlack,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MYTH BUSTERS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.arrow_forward, color: Colors.white,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}