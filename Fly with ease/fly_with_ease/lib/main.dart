import 'package:flutter/material.dart';
import 'package:fly_with_ease/apicaller.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  

  @override
  State<MyHomePage> createState() {
    return new MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {

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

   @override
  Widget build(BuildContext context) {
    
    // if(data==null)
    // {
    //   call();
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: data==null?Text("peep"):Text("app"),
    //     ));
    // }
    return Scaffold(
        appBar: AppBar(
          title: Text("app"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Text("top"),
            ),
            Text(_data == null ? "TEST" : _data.departure["actualTimeLocal"] + "")
            
            // Container(child: Data(), height: 100,)
          ],
        ));
  }
}
