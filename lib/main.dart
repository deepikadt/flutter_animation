import 'package:flutter/material.dart';
import 'package:flutter_animation/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                _selected = !_selected;
              });
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _selected ? 200.0 : 100.0,
              height: _selected ? 100.0 : 200.0,
              color: _selected ? Colors.pink : Colors.blue,
              curve: Curves.bounceIn,
              child: Center(
                child: AnimatedPadding(
                  child: Container(
                      color: _selected ? Colors.blueGrey : Colors.grey[400]),
                  duration: Duration(seconds: 1),
                  curve: Curves.bounceOut,
                  padding:
                      _selected ? EdgeInsets.all(16.0) : EdgeInsets.all(8.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Stack(
            children: <Widget>[
              //bottomest
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
              ),

              Container(
                height: 80.0,
                width: 80.0,
                color: Colors.blueGrey,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.green,
              ),
              //toppest
              Positioned(
                right: 10.0,
                bottom: 10.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          //show only that child whose index is given
          IndexedStack(
            index: 1,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
              ),

              Container(
                height: 80.0,
                width: 80.0,
                color: Colors.blueGrey,
              ),
              Container(
                height: 60.0,
                width: 60.0,
                color: Colors.green,
              ),
              //toppest
              Positioned(
                right: 10.0,
                bottom: 10.0,
                child: Container(
                  height: 20.0,
                  width: 20.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Stack(
            children: <Widget>[
              //bottomest
              Container(
                height: 100.0,
                width: 200.0,
                color: Colors.red,
              ),

              Container(
                height: 80.0,
                width: 160.0,
                color: Colors.blueGrey,
              ),
              Container(
                height: 60.0,
                width: 100.0,
                color: Colors.green,
              ),
              //toppest
              AnimatedPositioned(
                duration: Duration(seconds: 1),
                right: _selected ? 10.0 : 50.0,
                bottom: _selected ? 10.0 : 50.0,
                child: Container(
                  height: _selected ? 30.0 : 50.0,
                  width: _selected ? 50.0 : 30.0,
                  color: _selected ? Colors.white : Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          RaisedButton(onPressed: (){
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FlareAnimationPage()),
            );
          },child: Text("Move to next screen"),)

        ],
      ),
    );
  }
}
