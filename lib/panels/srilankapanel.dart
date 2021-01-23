import 'package:covid19_app/panels/statysPannel.dart';
import 'package:flutter/material.dart';

class SriLankaPanel extends StatelessWidget {

  final Map srilankaData;

  const SriLankaPanel({Key key, this.srilankaData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2
            ),
            children: <Widget>[
              StatusPanel(
                title: 'New Cases',
                panelColor: Colors.black,
                textColor: Colors.red,
                count: srilankaData["data"]['local_new_cases'].toString(),
              ),
              StatusPanel(
                title: 'New Deaths',
                panelColor: Colors.black,
                textColor: Colors.red,
                count: srilankaData["data"]['local_new_deaths'].toString(),
              ),
              
              
              
            ],
          ),
          Text(
            'Updated Time : ' + srilankaData["data"]['update_date_time'].toString(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
          GridView(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2
            ),
            
            children: <Widget>[
              
              StatusPanel(
                title: 'CONFIRMED',
                panelColor: Colors.grey[800],
                textColor: Colors.white,
                count: srilankaData["data"]['local_total_cases'].toString(),
              ),
              StatusPanel(
                title: 'ACTIVE',
                panelColor: Colors.grey[800],
                textColor: Colors.white,
                count: srilankaData['data']['local_active_cases'].toString(),
              ),
              StatusPanel(
                title: 'RECOVERED',
                panelColor: Colors.grey[800],
                textColor: Colors.white,
                count: srilankaData['data']['local_recovered'].toString(),
              ),
              StatusPanel(
                title: 'DEATHS',
                panelColor: Colors.grey[800],
                textColor: Colors.white,
                count: srilankaData['data']['local_deaths'].toString(),
              ),
              StatusPanel(
                title: 'PCR COUNT',
                panelColor: Colors.grey[800],
                textColor: Colors.white,
                count: srilankaData['data']['total_pcr_testing_count'].toString(),
              ),
            ],
          ),
        ],
      ),
      
    );
  }
}
