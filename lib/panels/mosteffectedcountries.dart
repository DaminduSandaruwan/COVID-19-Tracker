import 'package:flutter/material.dart';

class MostAffectedPanel extends StatelessWidget {

  final List countryData;

  const MostAffectedPanel({Key key, this.countryData}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Expanded(
      //  height: 200,
        child: ListView.builder(
        itemBuilder: (context,index){
          return Container(
             height: 130,
             margin: EdgeInsets.symmetric(horizontal:10,vertical:10),
             decoration: BoxDecoration(
               color: Colors.black,
               border: Border.all(color: Colors.white),
               boxShadow: [BoxShadow(
                color: Colors.grey[100],
                blurRadius: 10,
                offset: Offset(0,2),
               )]
             ),
             child: Row(
               children: <Widget>[
                 Container(
                   margin: EdgeInsets.symmetric(horizontal:25),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       Container(
                         width: 100,
                         child: Text(countryData[index]['country'],style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,)),
                       Image.network(countryData[index]['countryInfo']['flag'], height: 50, width: 60,),

                     ],
                   ),
                 ),
                 Expanded(
                   child: Container(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Text('CONFIRMED : ' + countryData[index]['cases'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                         Text('ACTIVE : ' + countryData[index]['active'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                         Text('RECOVERED : ' + countryData[index]['recovered'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
                         Text('DEATHS : ' + countryData[index]['deaths'].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[400]),),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
          );
        },
        itemCount: countryData==null?0:countryData.length,
      ),
      );
  }
}

