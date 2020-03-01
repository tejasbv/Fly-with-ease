import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class Apicaller {
  Apicaller() {
    getInfo();
  }

  String getInfo() {
    var thing = fetchAero();
    thing.then((aero) {
      print("hello");
    });
  }

  String url =
      "https://aerodatabox.p.rapidapi.com/flights/DL47/2019-08-29?withLocation=false&withAircraftImage=false";
  Future<Aero> fetchAero() async {
    final response = await http.get(url, headers: {
      "x-rapidapi-host": "aerodatabox.p.rapidapi.com",
      "x-rapidapi-key": "4a4e824657mshab2b5ac6d6b10cbp144f5bjsn0679b5b8ef15"
    });

    if (response.statusCode == 200) {
      return Aero.fromJson(json.decode(response.body));
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
