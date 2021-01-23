import 'package:covid19_app/panels/mosteffectedcountries.dart';
import 'package:covid19_app/panels/worldwidepanel.dart';
import 'package:flutter/material.dart';

class Affected extends StatefulWidget {

  final List countryData;
  final Map worldData;
  Affected({this.countryData,this.worldData});
  @override
  _AffectedState createState() => _AffectedState();
}

class _AffectedState extends State<Affected> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Worldwide',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ],
              ),
            ),
            widget.worldData==null ? CircularProgressIndicator() : WorldWidePanel(worldData: widget.worldData,),
            Text(
              'Updated Time : ' + widget.worldData["data"]['update_date_time'].toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height:20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Affected Countries',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10,),
            widget.countryData==null?Container():MostAffectedPanel(countryData: widget.countryData,),

        ],
      ),
    );
  }
}