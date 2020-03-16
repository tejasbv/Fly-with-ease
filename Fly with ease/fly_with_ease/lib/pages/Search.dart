import 'package:flutter/material.dart';

import 'package:fly_with_ease/pages/HomePage.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() {
    // TODO: implement createState
    return _SearchState();
  }
}

class _SearchState extends State<Search> {
  DateTime _date;
  String Flightnumber = "";
  void selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2020),
        lastDate: DateTime(2100));

    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;

        print(_date.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("app"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Container(
                  width: 250,
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "Enter flight number",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    onChanged: (String text) => {Flightnumber = text},
                    onSubmitted: (String text) => Flightnumber = text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
                color: Colors.grey[350],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Card(
                    child: Container(
                      width: 190,
                      height: 40,
                      child: Center(
                        child: _date == null
                            ? Text(
                                "click icon to choose date",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                                textAlign: TextAlign.center,
                              )
                            : Text(
                                _date.toString().substring(0, 10),
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                      ),
                    ),
                    color: Colors.grey[350],
                  ),
                  Card(
                    child: Container(
                      height: 40,
                      child: IconButton(
                        icon: Icon(Icons.calendar_today),
                        onPressed: () {
                          selectDate(context);
                        },
                      ),
                    ),
                    color: Colors.grey[350],
                  )
                ],
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>HomePage(Flightnumber, _date.toString().substring(0, 10))));
                },
                child: Text("search"),
              )
            ],
          ),
        ));
    ;
  }
}
