import 'dart:convert';
import 'package:covid19_app/mainScreens/affected.dart';
import 'package:covid19_app/mainScreens/homepage.dart';
import 'package:covid19_app/mainScreens/moreScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class NaviScreen extends StatefulWidget {

  @override
  _NaviScreenState createState() => _NaviScreenState();
}

class _NaviScreenState extends State<NaviScreen> {

  
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  Map worldData;
  fetchWorldWideData() async{
    http.Response response = await http.get('https://hpb.health.gov.lk/api/get-current-statistical');
    setState(() {
      worldData = json.decode(response.body);

    });
  } 
  // Map worldData;
  // fetchWorldWideData() async{
  //   http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
  //   setState(() {
  //     worldData = json.decode(response.body);

  //   });
  // } 
  List countryData;
  fetchCountryData() async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countryData = json.decode(response.body);

    });
  }

  Map srilankaData;
  fetchSriLankaData() async{
    http.Response response = await http.get('https://hpb.health.gov.lk/api/get-current-statistical');
    setState(() {
      srilankaData = json.decode(response.body);

    });
  }
  @override
  void initState() {

    fetchWorldWideData();
    fetchCountryData();
    fetchSriLankaData();

    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: "Local"
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.globe),
            label: "Global"
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.info),
            label: "More"
          ),
        ],
        onTap: (index) {
          // if(index==2){
          //   _scaffoldKey.currentState.openEndDrawer(); // for open to Drawer
          // }
          // else{
          setState(() {
            _selectedIndex = index;
          });
          _pageController.jumpToPage(index);
          //}
        },

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        iconSize: 25,
        selectedFontSize: 10,
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "COVID-19 TRACKER",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: Colors.black26,
      ),
      
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomePage(srilankaData: srilankaData,),
          Affected(worldData: worldData,countryData: countryData,),
          MoreScreen()
          
          ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      
    );
  }
}