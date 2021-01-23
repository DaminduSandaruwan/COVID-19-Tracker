import 'package:covid19_app/panels/infoPanel.dart';
import 'package:flutter/material.dart';
import 'datasource.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  

  @override
  void initState() {
    //fetchWorldWideData();
    super.initState();
  }   

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Container(
              height: 100,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              color: Colors.orange[100],
              child: Text(
                DataSource.quote,
                style: TextStyle(
                  color: Colors.orange[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),

                  
            InfoPanel(),
            SizedBox(height: 20,),
            Center(
              child: Text(
                "WE ARE TOGETHER IN THE FIGHT",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
      
    );
  }
}