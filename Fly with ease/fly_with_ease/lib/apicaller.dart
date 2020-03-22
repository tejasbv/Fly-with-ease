import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Apicaller {
  String flightnumber, date;
  String url =
      "http://api.aviationstack.com/v1/flights?access_key=76a41990b70745202d464448c06a8648&airline_iata=aa&flight_number=2157";
  Apicaller(this.flightnumber, this.date) {
    //aa&flight_number=2157
    url+=flightnumber.substring(0,2)+"&flight_number="+flightnumber.substring(2);
    getInfo();
  }

  String getInfo() {
    var thing = fetchAero();
    thing.then((aero) {
      print("hello");
    });
  }

  
  Future<Aero> fetchAero() async {
    final response = await http.get(url,);

    if (response.statusCode == 200) {
      return Aero.fromJson(json.decode(response.body)["data"]);
    } else {
      throw Exception("api call invalid");
    }
  }
}

class Aero {
  var arrival;
  var departure;
  Aero(this.arrival, this.departure);
  factory Aero.fromJson(List<dynamic> json) {
    return (Aero(
      json[0]['arrival'],
      json[0]['departure'],
    ));
  }
  toString() {
    return arrival.toString();
  }
}
