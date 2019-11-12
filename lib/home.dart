import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class FlareAnimationPage extends StatefulWidget {
  @override
  _FlareAnimationPageState createState() => _FlareAnimationPageState();
}

class _FlareAnimationPageState extends State<FlareAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlareActor(
          'assets/circular1.flr',
          animation: "Untitled",
          fit: BoxFit.contain,
          color: Colors.blue,
        ),
      ),
    );
  }
}
