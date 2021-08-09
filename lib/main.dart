import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giverrrs/Home/Login/GetStarted.dart';
import 'package:giverrrs/Register.dart';
import 'package:giverrrs/widgets/quick_link_widget.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MaterialApp(
    home: Register(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _textFieldController = TextEditingController();
  String selectedValue = "DayStar Christian Center";
  String hintValue = "You\'re in:";
  final dropdownList = [
    'DayStar Christian Center',
    'Eaily Star Church',
    'Faily Star Church',
    'Gaily Star Church',
    'Haily Star Church',
    'Aaily Star Church'
  ];

  final List<QuickLink> _quickLinks = [
    QuickLink("Assets/Topup.svg", "Offering", false),
    QuickLink("Assets/Topup.svg", "Tithe", false),
    QuickLink("Assets/Topup.svg", "Donation", false),
    QuickLink("Assets/Topup.svg", "Building", false),
    QuickLink("Assets/Topup.svg", "Top-up", false),
  ];
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        extendBodyBehindAppBar: true,
        body: Stack(
            children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              color: Color(0xFF567DF4),
            ),
            child: Stack(
              children: [
                Container(
                    width: double.infinity,
                    child: SvgPicture.asset('Assets/Vector-1.svg', width: 500)),
                Container(
                  child: SvgPicture.asset('Assets/Vector.svg', width: 500),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(29, 80, 0, 0),

                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text('Hello! ',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      Text('TosinFala',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ],
                  ),

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Container(
                  //       child:
                  //       Text('Churches', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),),
                  //     ),
                  //     Container(
                  //       width: 120,
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(9),
                  //         color: Colors.black.withOpacity(0.2),
                  //       ),
                  //      // color: Colors.black.withOpacity(0.2),
                  //       child: Container(
                  //         height: 50,
                  //         width: 100,
                  //         child: TextButton(
                  //           onPressed: null,
                  //           child: Wrap(
                  //             crossAxisAlignment:
                  //             WrapCrossAlignment.center,
                  //             children: [
                  //               Icon(Icons.add, color: Colors.white,),
                  //               Text(' Top up', style: TextStyle(color:Colors.white)),
                  //
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     )
                  //   ],
                  // ),
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(30, 110, 30, 0),
                    padding: const EdgeInsets.all(0.0),
                    child: DropdownButton<String>(
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 20.09,
                        ),
                        hint: Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "You're in: ",
                                    style: TextStyle(color: Colors.amber)),
                                TextSpan(text: "$selectedValue")
                              ]),
                            ),
                          ],
                        ),
                        iconSize: 20,
                        //value: selectedValue,
                        items: dropdownList.map((String dropDownStringItem) {
                          return DropdownMenuItem(
                            value: dropDownStringItem,
                            child: Text(
                              dropDownStringItem,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (selectedValue) {
                          setState(() {
                            this.selectedValue = selectedValue ?? "";
                          });
                        })),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    height: 41,
                    width: 41,
                    margin: EdgeInsets.fromLTRB(390, 80, 0, 0),
                    child: Stack(
                      children: [
                        Container(
                          child: Center(child: Image.asset('Assets/avi.png')),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF567DF4),
                              borderRadius: BorderRadius.circular(50)),
                          width: 12,
                          height: 12,
                          margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              width: 8,
                              height: 8,
                            ),
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 170, 30, 0),
            height: 250,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1A567DF4),
                  blurRadius: 5, // soften the shadow
                  spreadRadius: 1, //extend the shadow
                )
              ],
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(185, 0, 0, 0),
                  child: PieChart(
                    PieChartData(
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sections: [
                          PieChartSectionData(
                            color: const Color(0xff22215B),
                            value: 3,
                            title: '45%',
                            radius: 70,
                            titleStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
                          ),PieChartSectionData(
                            color: const Color(0xFFFFC700),
                            value: 5,
                            title: '35%',
                            radius: 70,
                            titleStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
                          ),PieChartSectionData(
                            color: const Color(0xFF567DF4),
                            value: 4,
                            title: '15%',
                            radius: 70,
                            titleStyle: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold, color: const Color(0xffffffff)),
                          ),
                        ],
                        sectionsSpace: 0,
                      centerSpaceColor: Colors.white,
                      centerSpaceRadius: 30,

                      // read about it in the PieChartData section
                    ),
                    swapAnimationDuration: Duration(milliseconds: 150), // Optional
                    swapAnimationCurve: Curves.linear,
                    // Optional

                  )
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        '₦490,857',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      margin: EdgeInsets.fromLTRB(30, 30, 0, 0),
                    ),
                    Container(
                      child: Text(
                        'Available Balance',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xA622215B)),
                      ),
                      margin: EdgeInsets.fromLTRB(0, 0, 40, 0),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(30, 120, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 13,
                          color: Color(0xFF567DF4),
                        ),
                        Text('  Tithes Paid',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xA622215B))),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 180, 0, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 13,
                        color: Color(0xFFFFC700),
                      ),
                      Text('  Offerings',
                          style: TextStyle(
                              fontSize: 15, color: Color(0xA622215B))),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(50, 140, 0, 0),
                  child: Text(
                    '₦19,800',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(50, 200, 0, 0),
                  child: Text(
                    '₦50,984',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 440, 30, 0),
            height: 140,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color(0x1A567DF4),
                  blurRadius: 5, // soften the shadow
                  spreadRadius: 1, //extend the shadow
                )
              ],
            ),
            child: Stack(
              children: [
                Container(
                  child: Text(
                    'Quick Links',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 55, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: _quickLinks
                        .map((e) => QuickLinkWidget(
                              assetName: e.asset,
                              title: e.title,
                              currentlySelected: e.selected,
                              onPress: () {
                                setState(() {
                                  _quickLinks.forEach((quickLink) {
                                    quickLink.selected = false;
                                  });
                                  e.selected = true;
                                });
                              },
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(30, 600, 30, 0),
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x1A567DF4),
                    blurRadius: 6, // soften the shadow
                    spreadRadius: 1, //extend the shadow
                  )
                ],
              ),
              child: Stack(children: [
                Container(
                  margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
                  child: Text(
                    'Change House of Worship',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(
                        0xFF22215B,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              child: Wrap(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 100, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "Assets/daystarpng.png",
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 105, 0, 0),
                                    child: Text(
                                      'Daystar Christian Centre',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF22215B,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(80, 125, 0, 0),
                              child: Text(
                                'Plot, A3C Ikosi Rd, Oregun, Lagos',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xA622215B),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                       Container(
                        child: Stack(
                          children: [
                            Container(
                              child: Wrap(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "Assets/House on the rock.png",
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                    child: Text(
                                      'House On The Rock',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF22215B,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(80, 35, 0, 0),
                              child: Text(
                                'The Rock Cathedral, Lekki - Epe Expy, Lekki',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xA622215B),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Stack(
                          children: [
                            Container(
                              child: Wrap(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Image.asset(
                                      "Assets/christ.png",
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(10, 15, 0, 0),
                                    child: Text(
                                      'Redeemed Christian Church of God',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color(
                                          0xFF22215B,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(80, 35, 0, 0),
                              child: Text(
                                'The Rock Cathedral, Lekki - Epe Expy, Lekki',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xA622215B),
                                ),
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    child: Wrap(
                                      children: [
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(30, 62, 0, 0),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Image.asset(
                                            "Assets/christ.png",
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(10, 67, 0, 0),
                                          child: Text(
                                            'Redeemed Christian Church of God',
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Color(
                                                0xFF22215B,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(80, 87, 0, 0),
                                    child: Text(
                                      'The Rock Cathedral, Lekki - Epe Expy, Lekki',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xA622215B),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 20, 0),
                  height: 70,
                  //Add padding around textfield
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  color: Colors.white,
                  child: TextField(
                    autocorrect: true,
                    controller: _textFieldController,
                    decoration: InputDecoration(
                      hintText: "Search House of Worship Name",

                      //add icon outside input field
                      //add icon to the beginning of text field
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset(
                          'Assets/search.svg',
                        ),
                        onPressed: null,
                      ),
                      //Icon(Icons.search, color: Color(0xFF22215B,),),
                      //can also add icon to the end of the textfiled
                      //suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ])),
          // Container(
          //   margin: EdgeInsets.fromLTRB(0, 900, 0, 0),
          //   height: double.infinity,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //       boxShadow: [
          //         BoxShadow(
          //           color: Color(0x1A567DF4),
          //           blurRadius: 5, // soften the shadow
          //           spreadRadius: 1, //extend the shadow
          //         )
          //       ],
          //       color: Colors.white,
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(30),
          //           topRight: Radius.circular(30))),
          // )

        ]),
    );
  }
}

class QuickLink {
  final String asset;
  final String title;
  bool selected;

  QuickLink(this.asset, this.title, this.selected);
}
