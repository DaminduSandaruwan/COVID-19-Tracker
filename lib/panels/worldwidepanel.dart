import 'package:covid19_app/panels/statysPannel.dart';
import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {

  final Map worldData;

  const WorldWidePanel({Key key, this.worldData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2
        ),
        children: <Widget>[
          StatusPanel(
            title: 'NEW CASES',
            panelColor: Colors.red[100],
            textColor: Colors.red,
            count: worldData['data']['global_new_cases'].toString(),
          ),
          StatusPanel(
            title: 'CONFIRMED',
            panelColor: Colors.red[100],
            textColor: Colors.red,
            count: worldData['data']['global_total_cases'].toString(),
          ),
          // StatusPanel(
          //   title: 'ACTIVE',
          //   panelColor: Colors.blue[100],
          //   textColor: Colors.blue[900],
          //   count: worldData['data']['global_recovered"'].toString(),
          // ),
          StatusPanel(
            title: 'RECOVERED',
            panelColor: Colors.green[100],
            textColor: Colors.green,
            count: worldData['data']['global_recovered'].toString(),
          ),
          StatusPanel(
            title: 'DEATHS',
            panelColor: Colors.grey[400],
            textColor: Colors.grey[900],
            count: worldData['data']['global_deaths'].toString(),
          ),
        ],
      ),
      
    );
  }
}
