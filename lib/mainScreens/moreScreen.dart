import 'package:covid19_app/datasource.dart';
import 'package:covid19_app/panels/infoPanel.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
            Container(
              height: 100,
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
             // color: Colors.orange[100],
              child: Text(
                DataSource.quote,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
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