import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:flutter_svg/flutter_svg.dart';


class GetStarted1 extends StatefulWidget {
  const GetStarted1({Key? key}) : super(key: key);

  @override
  _GetStarted1State createState() => _GetStarted1State();
}

class _GetStarted1State extends State<GetStarted1> {
  List<Slide> slides = [];

  @override

  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "ERASER",
        description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        styleDescription: TextStyle(color: Colors.black, fontSize: 16),
        pathImage: "Assets/IllustrationPng.png", widthImage: 316.09, heightImage: 360,
        backgroundColor: Colors.white,
      ),
    );
    slides.add(
      new Slide(
        title: "PENCIL",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "Assets/IllustrationPng.png",
        backgroundColor: Colors.white,
      ),
    );
    slides.add(
      new Slide(
        title: "RULER",
        styleTitle: TextStyle(
          color: Colors.black, fontSize: 30
        ),
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "Assets/IllustrationPng.png",
        backgroundColor: Colors.white,
      ),
    );
  }

  void onDonePress() {
    // Do what you want
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 250),
      child: IntroSlider(
        slides: this.slides,
        onDonePress: this.onDonePress,
      ),
    );
  }
}
