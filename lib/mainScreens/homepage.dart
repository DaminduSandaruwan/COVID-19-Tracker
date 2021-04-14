import 'package:covid19_app/datasource.dart';
import 'package:covid19_app/mainScreens/ad_helper.dart';
import 'package:covid19_app/mainScreens/banAdd.dart';
import 'package:covid19_app/panels/srilankapanel.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomePage extends StatefulWidget {
  final Map srilankaData;
  HomePage({this.srilankaData});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

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
              //color: Colors.orange[100],
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

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Text(
                'Sri Lanka',
                style: TextStyle(
                  color: Colors.white,
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
            BansAdd()  
            
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(),
            //     Container(
            //       child: AdWidget(ad: _ad),
            //       width: _ad.size.width.toDouble(),
            //       height: 72.0,
            //       alignment: Alignment.center,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      
    );
  }
}