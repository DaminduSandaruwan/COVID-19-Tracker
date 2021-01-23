import 'package:flutter/material.dart';

class StatusPanel extends StatelessWidget {

  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel({Key key, this.panelColor, this.textColor, this.title, this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: panelColor,
        border: Border.all(color: Colors.grey)
      ),
      margin: EdgeInsets.all(10),
      
      height: 80,
      width: width/2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title, style: TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color:textColor),textAlign: TextAlign.center,),
          Text(count, style: TextStyle(fontWeight:FontWeight.bold, fontSize: 16, color:textColor)),
        ],
      ),
    );
  }
}