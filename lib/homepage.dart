import 'dart:convert';

import 'package:flutter/material.dart';
import 'datasource.dart';
import 'panels/worldwidepanel.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map worldData;

  fetchWorldWideData() async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = json.decode(response.body);

    });
  } 

  @override
  void initState() {
    fetchWorldWideData();
    super.initState();
  }   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("COVID-19 TRACKER"),
      ),
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
                'Worldwide',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            worldData==null ? CircularProgressIndicator() : WorldWidePanel(worldData: worldData,),
          ],
        ),
      ),
      
    );
  }
}