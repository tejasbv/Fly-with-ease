import 'package:flutter/material.dart';

import '../bottomLayout.dart';

class HomePage extends StatelessWidget
{
  String flightNumber;

  String date;


  HomePage(String this.flightNumber, String this.date);
  
  @override
  Widget build(BuildContext context) {


    /**********************************************************/
      // full screen width and height
      double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
      var padding = MediaQuery.of(context).padding;
      // height without status and toolbar
      double height3 = height- kToolbarHeight;
    //**********************************************************/
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("app"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(height: .3 * height3, child: Text("top")),
            ),
            BottomLayout(height3*.65, width, flightNumber, date)
            // Card(child: Container(height: .65 * height3, child: BottomLayout(),))
            // Container(height: 100, child: _data==null?ColorLoader4():Text(_data.departure["actualTimeLocal"] + ""),)

            // Container(child: Data(), height: 100,)
          ],
        ),
        backgroundColor: Colors.grey,);;
  }
  
}