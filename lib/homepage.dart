import 'package:covid19_app/panels/srilankapanel.dart';
import 'package:flutter/material.dart';
import 'datasource.dart';

class HomePage extends StatefulWidget {
  final Map srilankaData;
  HomePage({this.srilankaData});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  

  @override
  void initState() {
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

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Text(
                'Sri Lanka',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            widget.srilankaData==null ? CircularProgressIndicator() : SriLankaPanel(srilankaData: widget.srilankaData,),

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