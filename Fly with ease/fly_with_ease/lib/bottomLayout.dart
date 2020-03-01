import 'package:flutter/material.dart';
import 'package:fly_with_ease/Loader.dart';
import 'package:fly_with_ease/textPrinter_home.dart';

import 'apicaller.dart';

class BottomLayout extends StatefulWidget {
  double _height, _width;
  BottomLayout(height, width) {
    this._width = width - 35;
    this._height = height - 55;
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BottomLayoutState(_height, _width);
  }
}

class BottomLayoutState extends State<BottomLayout> {
  Apicaller caller = new Apicaller();
  Aero _data;

  @override
  void initState() {
    super.initState();
    caller.fetchAero().then((data) {
      _data = data;
      setState(() {});
    });
  }

  double _height, _width;
  BottomLayoutState(height, width) {
    this._width = width;
    this._height = height;
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
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
              Card(
                child: Container(
                  child: _data == null
                      ? ColorLoader4()
                      : TextPrinterHome("Departure Airport: \n\n" , _data.departure["airport"]["iata"] +""),
                  height: this._height / 3,
                  width: this._width / 3,
                ),
                elevation: 7,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
