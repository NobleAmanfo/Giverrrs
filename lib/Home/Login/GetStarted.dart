import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'package:giverrrs/GetStarted1.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: initScreen(context)
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => GetStarted1()
    )
    );
  }
  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF567DF4),
      body: Stack(
        children: [
          Container(
              width: double.infinity,
              child: SvgPicture.asset('Assets/Vector-1.svg', width: 500)),
          Container(
            child: SvgPicture.asset('Assets/Vector.svg', width: 500),
          ),
          Center(
            child: Container(
              child: SvgPicture.asset('Assets/giverrrsTitle.svg', ),
            )
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 855, 0, 0),
              width: double.infinity,
              child: SvgPicture.asset('Assets/reversed vector.svg', width: 500)),


        ],
      ),
    );
  }
}
