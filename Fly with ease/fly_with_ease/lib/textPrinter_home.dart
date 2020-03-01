

import 'package:flutter/material.dart';

class TextPrinterHome extends StatelessWidget
{
  String _banner;
  String _result;

  TextPrinterHome(this._banner,this._result);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Center( child: Text(_banner, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),textAlign: TextAlign.center,)),
        Center(child: Text(_result,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),textAlign: TextAlign.center,)),
      ],
    );
  }
  
}

