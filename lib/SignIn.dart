import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giverrrs/Register.dart';
import 'package:giverrrs/main.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController _textFieldController = TextEditingController();

  @override
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
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                ),
                SizedBox(
                  width: 0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                  child: Image.asset(
                    'Assets/SignIn title.png',
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  width: 430,
                  height: 500,
                  child: Center(
                      child: Stack(children: [
                    Column(children: [
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
                        height: 40,
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
                                    MaterialPageRoute(builder: (context) => Home()),
                                  );
                                },
                                child: Text("Sign In",
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
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "or ",
                                style: TextStyle(color: Color(0x8022215B))),
                            TextSpan(
                                text: "Register a new account",
                                style: TextStyle(color: Color(0xFF567DF4))),
                          ]),
                        ),
                      ),
                    ])
                  ]))))
        ]));
  }
}
