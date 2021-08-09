import 'package:flutter/material.dart';
import 'package:giverrrs/main.dart';
import 'package:giverrrs/EachPage.dart';
import 'package:giverrrs/Indicator.dart';
import 'package:giverrrs/Register.dart';

class GetStarted1 extends StatefulWidget {
  const GetStarted1({Key? key}) : super(key: key);

  @override
  _GetStarted1State createState() => _GetStarted1State();
}

class _GetStarted1State extends State<GetStarted1> {
  // List<Slide> slides = [];
  //
  // @override
  //
  // void initState() {
  //   super.initState();
  //
  //   slides.add(
  //     new Slide(
  //       title: "ERASER",
  //       styleTitle: TextStyle(
  //         fontSize: 30, color: Colors.black
  //       ),
  //       description: "Allow miles wound place the leave had. To sitting subject no improve studied limited",
  //       styleDescription: TextStyle(color: Colors.black, fontSize: 16),
  //       pathImage: "Assets/IllustrationPng.png", widthImage: 316.09, heightImage: 360,
  //       backgroundColor: Colors.white,
  //     ),
  //   );
  //   slides.add(
  //     new Slide(
  //       title: "PENCIL",
  //       description: "Ye indulgence unreserved connection alteration appearance",
  //       pathImage: "Assets/IllustrationPng.png",
  //       backgroundColor: Colors.white,
  //     ),
  //   );
  //   slides.add(
  //     new Slide(
  //
  //       styleTitle: TextStyle(
  //         color: Colors.black, fontSize: 30
  //       ),
  //       title: "RULER",
  //       description:
  //       "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
  //       pathImage: "Assets/IllustrationPng.png",
  //       backgroundColor: Colors.white,
  //     ),
  //   );
  // }
  //
  // void onDonePress() {
  //   // Do what you want
  // }
  //Controller for the PageView
  PageController controller = PageController();

  final images = [
    "Assets/IllustrationPng.png",
    "Assets/managEverything.png",
    "Assets/safeTransac.png",
  ];
  final images1 = [
    "Assets/Secure Your Money.png",
    "Assets/Manage Everything.png",
    "Assets/Safe Transaction.png",
  ];
  final images2 = [
    "Assets/Add your credit card, bank details here to transaction. Don’t worry about it its fully secure..png",
    "Assets/You can manage each and everything from here. Get rewards, voucher and many more functionalities you can use..png",
    "Assets/Transfer money account to account. Don’t share this id anywhere. Only you can manage your transaction..png",
  ];
  // int numberOfPages = 3;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return EachPage(
                images1[index],
                images2[index],
                images[index],
              );
            },
          ),
          Align(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 580, 0, 0),
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Flexible(child: Container()),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: Indicator(
                        controller: controller,
                        pageCount: 3,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: (currentPage == 2 )
                        ? GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.fromLTRB(120, 0, 120, 0),
                              decoration: BoxDecoration(
                                  color: Color(0xFF567DF4),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                  child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Register()),
                                  );
                                },
                                child: Text("Get Started",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 15)),
                              )),
                            ))
                        : GestureDetector(
                            onTap: () {
                              setState(() {
                                if (currentPage == 2) return;
                               currentPage+=1;
                              });
                              controller.jumpToPage(currentPage);
                              // jumpToPage(numberOfPages+1);
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(120, 0, 120, 0),
                              decoration: BoxDecoration(
                                color: Color(0xFF567DF4),
                                borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                  child: Text("Continue",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 15))),
                            ),
                  )
                  ),

                  Flexible(
                    child:
                    GestureDetector(
                        onTap: (){
                          controller.jumpToPage(images.length);
                        },
                        child: Center(child: Text("Skip for now",style: TextStyle(color: Color(0xA622215B), fontSize: 16),))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
    // return Container(
    //   margin: EdgeInsets.fromLTRB(0, 0, 0, 250),
    //   child: IntroSlider(
    //     slides: this.slides,
    //     onDonePress: this.onDonePress,
    //   ),
    // );
  }
}
