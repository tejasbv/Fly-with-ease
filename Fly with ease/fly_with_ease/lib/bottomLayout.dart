import 'package:flutter/material.dart';

class BottomLayout extends StatelessWidget {
 double _height, _width;
  BottomLayout(height,width)
  {
    this ._width = width-35;
    this._height = height-55;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
            ],
          ),
          Row(
            children: <Widget>[
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
            ],
          ),
          Row(
            children: <Widget>[
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
              Card(child: Container(child: Text("text"),height: this._height/3,width: this._width/3,),elevation: 7,),
            ],
          ),
        ],
      ),
    );
  }
}
