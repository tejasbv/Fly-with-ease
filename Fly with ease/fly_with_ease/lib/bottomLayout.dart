import 'package:flutter/material.dart';
import 'package:fly_with_ease/Loader.dart';
import 'package:fly_with_ease/textPrinter_home.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:date_format/date_format.dart';
import 'apicaller.dart';

class BottomLayout extends StatefulWidget {
  double _height, _width;
  String flightnumber, date;
  BottomLayout(height, width, this.flightnumber, this.date ) {
    this._width = width - 35;
    this._height = height - 55;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BottomLayoutState(_height, _width, this.flightnumber, this.date );
  }
}

class BottomLayoutState extends State<BottomLayout> {
  
  openURL(String url) {
    
    launch(url);
  }
  String flightnumber, date;

  double _height, _width;
  BottomLayoutState(height, width, this.flightnumber, this.date ) {
    this._width = width;
    this._height = height;
  }
  Apicaller caller ;
  Aero _data;
  Duration totalTravelTime;
  @override
  void initState() {
    caller = new Apicaller(flightnumber, date);
    super.initState();
    caller.fetchAero().then((data) {
      _data = data;
      setState(() {
        //DateTime deptTime = DateTime.parse(""+_data.departure["scheduledTimeUtc"].toString());
        //DateTime arrTime =  DateTime.parse(""+_data.arrival["scheduledTimeUtc"].toString());
        //print(""+deptTime.toString());
        //print(""+arrTime.toString());
        //totalTravelTime = arrTime.difference(deptTime);
      }); 
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : FlatButton(child: TextPrinterHome("Departure\nAirport: \n\n" , _data.departure["iata"] +""), onPressed: () {openURL("https://www.google.com/maps/search/?api=1&query="+_data.departure["iata"]+"+airport");},),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              // Card(
              //   child: Container(
              //     child: _data == null
              //         ? ColorLoader4()
              //         : TextPrinterHome("Total travel\ntime: \n\n" , totalTravelTime.toString().substring(0,4)),
              //     height: this._height / 3,
              //     width: this._width / 3,
              //   ),
              //   elevation: 7,
              // ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : FlatButton(child: TextPrinterHome("Arrival\nAirport: \n\n" , _data.arrival["iata"] +""), onPressed: () {openURL("https://www.google.com/maps/search/?api=1&query="+_data.arrival["iata"]+"+airport");},),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
            ],
          ),
          Row(
            children: <Widget>[
          //     Card(
          //       child: Container(
          //         child: _data == null
          //             ? ColorLoader4()
          //             : TextPrinterHome("Departure Time Local: \n\n" , (_data.departure["scheduledTimeLocal"]).toString().substring(10,16) +""),
          //         height: this._height / 3,
          //         width: this._width / 3,
          //       ),
          //       elevation: 7, 
          //     ),
          Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : FlatButton(child: TextPrinterHome("Departure\nAirport: \n\n" , _data.departure["iata"] +""), onPressed: () {openURL("https://www.google.com/maps/search/?api=1&query="+_data.departure["iata"]+"+airport");},),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
          //     Card(
          //       child: Container(
          //         child: _data == null
          //             ? ColorLoader4()
          //             : TextPrinterHome("Arrival Time Local: \n\n" , (_data.arrival["scheduledTimeLocal"]).toString().substring(10,16) +""),
          //         height: this._height / 3,
          //         width: this._width / 3,
          //       ),
          //       elevation: 7,
          //     ),
            ],
          ),
          Row(
            children: <Widget>[
              // Card(
              //   child: Container(
              //     child: _data == null
              //         ? ColorLoader4()
              //         : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
              //     height: this._height / 3,
              //     width: this._width / 3,
              //   ),
              //   elevation: 7,
              // ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : IconButton(icon: Icon(Icons.local_taxi), onPressed: (){openURL("uber://?client_id=<CLIENT_ID>&action=setPickup&pickup[nickname]=my_location&dropoff[latitude]=37.802374&dropoff[longitude]=-122.405818&dropoff[nickname]="+_data.departure ["iata"]+"+airport"+"%20airport&product_id=a1111c8c-c720-46c3-8534-2fcdd730040d&link_text=View%20team%20roster&partner_deeplink=partner%3A%2F%2Fteam%2F9383");},iconSize: 100,),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              // Card(
              //   child: Container(
              //     child: _data == null
              //         ? ColorLoader4()
              //         : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
              //     height: this._height / 3,
              //     width: this._width / 3,
              //   ),
              //   elevation: 7,
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
