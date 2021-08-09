import 'package:flutter/material.dart';

class EachPage extends StatelessWidget {
  final String image1;
  final String image2;
  final String image;

  EachPage(this.image1, this.image2, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 150),
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                // margin: EdgeInsets.fromLTRB(0, 0, 0, 300),
                child: Image.asset(
                  image,
                  width: 316,
                  height: 360,
                ),
              ),
              SizedBox(
                height: 90,
              ),
              Column(
                children: [
                  Container(
                    child: Image.asset(
                      image1,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    image2,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
