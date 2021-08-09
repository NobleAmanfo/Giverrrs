import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:giverrrs/SignIn.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  TextEditingController _textFieldController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 60, 0, 0),
          child: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: Color(0xFF22215B),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 3, 0, 0),

                child: Image.asset(
                  'Assets/Register title.png',
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            width: 430,
            height: 800,
            child: Center(
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      SvgPicture.asset(
                        'Assets/giverrrsLogo.svg',
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: TextField(
                          autocorrect: true,
                          controller: _textFieldController,
                          decoration: InputDecoration(
                            hintText: "Enter your full name",
                            labelText: "Full name",
                            labelStyle: TextStyle(color: Color(0x8022215B)),
                            //add icon outside input field
                            //add icon to the beginning of text field
                            prefixIcon: IconButton(
                              icon: SvgPicture.asset(
                                'Assets/person icon.svg',
                              ),
                              onPressed: null,
                            ),
                            //Icon(Icons.search, color: Color(0xFF22215B,),),
                            //can also add icon to the end of the textfiled
                            //suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: TextField(
                          autocorrect: true,
                          controller: _textFieldController,
                          decoration: InputDecoration(
                            hintText: "Enter your Email",
                            labelText: "Email",
                            labelStyle: TextStyle(color: Color(0x8022215B)),

                            //add icon outside input field
                            //add icon to the beginning of text field
                            prefixIcon: IconButton(
                              icon: SvgPicture.asset(
                                'Assets/msg icon.svg',
                              ),
                              onPressed: null,
                            ),
                            //Icon(Icons.search, color: Color(0xFF22215B,),),
                            //can also add icon to the end of the textfiled
                            //suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: TextField(
                          autocorrect: true,
                          controller: _textFieldController,
                          decoration: InputDecoration(
                            hintText: "Enter your Phone number",
                            labelText: "Phone number",
                            labelStyle: TextStyle(color: Color(0x8022215B)),
                            //add icon outside input field
                            //add icon to the beginning of text field
                            prefixIcon: IconButton(
                              icon: SvgPicture.asset(
                                'Assets/phoneIcon.svg',
                              ),
                              onPressed: null,
                            ),
                            //Icon(Icons.search, color: Color(0xFF22215B,),),
                            //can also add icon to the end of the textfiled
                            //suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: TextField(
                          autocorrect: true,
                          controller: _textFieldController,
                          decoration: InputDecoration(
                            hintText: "Enter your password",
                            labelText: "Password",
                            labelStyle: TextStyle(color: Color(0x8022215B)),
                            //add icon outside input field
                            //add icon to the beginning of text field
                            prefixIcon: IconButton(
                              icon: SvgPicture.asset(
                                'Assets/lockIcon.svg',
                              ),
                              onPressed: null,
                            ),
                            //Icon(Icons.search, color: Color(0xFF22215B,),),
                            //can also add icon to the end of the textfiled
                            //suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        child: TextField(
                          autocorrect: true,
                          controller: _textFieldController,
                          decoration: InputDecoration(
                            hintText: "Re-enter your password",
                            labelText: "Confirm password",
                            labelStyle: TextStyle(color: Color(0x8022215B)),
                            //add icon outside input field
                            //add icon to the beginning of text field
                            prefixIcon: IconButton(
                              icon: SvgPicture.asset(
                                'Assets/lockIcon.svg',
                              ),
                              onPressed: null,
                            ),
                            //Icon(Icons.search, color: Color(0xFF22215B,),),
                            //can also add icon to the end of the textfiled
                            //suffixIcon: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                        height: 54,
                        decoration: BoxDecoration(
                            color: Color(0xFF567DF4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: TextButton(
                          onPressed: () {
                            showGeneralDialog(
                                context: context,
                                barrierDismissible: true,
                                barrierLabel: MaterialLocalizations.of(context)
                                    .modalBarrierDismissLabel,
                                barrierColor: Color.fromRGBO(34, 33, 91, 60),
                                transitionDuration:
                                    const Duration(milliseconds: 200),
                                pageBuilder: (BuildContext buildContext,
                                    Animation animation,
                                    Animation secondaryAnimation) {
                                  return Center(
                                    child: Container(
                                      width: 430,
                                      height: 750,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 100,
                                          ),
                                          SvgPicture.asset(
                                            'Assets/alertDiaglogue.svg',
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Text(
                                            'Verification',
                                            style: TextStyle(
                                                color: Color(0xFF22215B),
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          SvgPicture.asset(
                                            'Assets/Enter the 4 digit code sent to your mobile number.svg',
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Material(
                                            child: OTPTextField(
                                              length: 4,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              textFieldAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              fieldWidth: 60,
                                              fieldStyle: FieldStyle.underline,
                                              outlineBorderRadius: 15,
                                              style: TextStyle(
                                                fontSize: 36,
                                                color: Color(0x8022215B),
                                                fontFamily:
                                                    'Font/Paralucent W00 Extra Light.ttf',
                                              ),
                                              onChanged: (pin) {
                                                print("Changed: " + pin);
                                              },
                                              onCompleted: (pin) {
                                                print("Completed: " + pin);
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TextButton(
                                            onPressed: () {},
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                    text:
                                                        "I didn\'t receive code  ",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0x8022215B))),
                                                TextSpan(
                                                    text: "Resend code",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF567DF4))),
                                              ]),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 70,
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  40, 0, 40, 0),
                                              height: 54,
                                              decoration: BoxDecoration(
                                                  color: Color(0xFF567DF4),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Center(
                                                  child: TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => SignIn()),
                                                  );
                                                },
                                                child: Text("Verify me",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        fontSize: 15)),
                                              ))),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => SignIn()),
                                              );
                                            },
                                            child: Text("Skip for now",
                                                style: TextStyle(
                                                    color: Color(0x8022215B))),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                            // showDialog<String>(
                            //   context: context,
                            //   builder: (BuildContext context) => Container(
                            //     child: AlertDialog(
                            //       insetPadding: EdgeInsets.all(90),
                            //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)), //this right here
                            //       title: SvgPicture.asset(
                            //         'Assets/alertDiaglogue.svg',
                            //       ),
                            //       content: Center(
                            //         child: Container(
                            //           width: double.infinity,
                            //           height: double.infinity,
                            //           child: Column(
                            //             children: [
                            //               SizedBox(
                            //                 height: 40,
                            //               ),
                            //               Text('Verification', style: TextStyle(color: Color(0xFF22215B), fontSize: 22, fontWeight: FontWeight.bold),),
                            //               SizedBox(
                            //                 height: 20,
                            //               ),
                            //               SvgPicture.asset(
                            //                 'Assets/Enter the 4 digit code sent to your mobile number.svg',
                            //               ),
                            //               SizedBox(
                            //                 height: 30,
                            //               ),
                            //
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //       actions: <Widget>[
                            //         TextButton(
                            //           onPressed: () => Navigator.pop(context, 'Cancel'),
                            //           child: const Text('Cancel'),
                            //         ),
                            //         TextButton(
                            //           onPressed: () => Navigator.pop(context, 'OK'),
                            //           child: const Text('OK'),
                            //         ),
                            //         Center(
                            //           child: TextButton(
                            //             onPressed: (){},
                            //             child: RichText(
                            //               text: TextSpan(children: [
                            //                 TextSpan(
                            //                     text: "or ",
                            //                     style: TextStyle(color: Color(0x8022215B))),
                            //                 TextSpan(text: "Sign in", style: TextStyle(color: Color(0xFF567DF4))),
                            //                 TextSpan(
                            //                     text: " with your account",
                            //                     style: TextStyle(color: Color(0x8022215B))),
                            //               ]),
                            //             ),),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // );
                          },
                          child: Text("Register account",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 15)),
                        )),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "or ",
                                style: TextStyle(color: Color(0x8022215B))),
                            TextSpan(
                                text: "Sign in",
                                style: TextStyle(color: Color(0xFF567DF4))),
                            TextSpan(
                                text: " with your account",
                                style: TextStyle(color: Color(0x8022215B))),
                          ]),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
