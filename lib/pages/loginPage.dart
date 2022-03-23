// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:resorts/pages/sign_upPage.dart';

import '../api/google_sign_in.dart';
import 'main_home_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Color color1 = HexColor('#0d6bc1');
  final Color color2 = HexColor('#f9f9f9');
  final Color color3 = HexColor('#585858');
  final Color color4 = HexColor('#ff7a8a');
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pswController = TextEditingController();
  bool circular = false;
  String email = '', password = '';
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: SizedBox(
                              child: Text(
                                "JOIN NOW",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: color1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: SizedBox(
                              child: Text(
                                "SKIP TO GO HOME",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: color3,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Text(
                              "Continue With",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(25),
                            child: SizedBox(child: facebookbutton()),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 25),
                            child: SizedBox(child: googlebutton()),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Text(
                              "- or Sign In With -",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                      ),

                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Icon(
                                  Boxicons.bx_mail_send,
                                  color: color1,
                                )),
                            textItem("Email or Mobile Number", _emailController,
                                false),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 20, right: 10),
                                child: Icon(
                                  Boxicons.bx_lock,
                                  color: color1,
                                )),
                            textItem("Password....", _pswController, true),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                'Forgot?',
                                style: TextStyle(color: color3, fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // textItem("Password....", _pswController, true),
                      SizedBox(
                        height: 50,
                      ),
                      colorButton(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 60),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        "Support",
                        style: TextStyle(color: color1, fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    final user = await GoogleSignInApi.login();
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Sign in Failed")));
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (cotnex) => MainHomePage()));
    }
  }

  Widget googlebutton() {
    return InkWell(
      onTap: signIn,
      child: Container(
        width: MediaQuery.of(context).size.width - 245,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all()),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 5),
                child: Image.asset("images/google.png")),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Google",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  facebookLogin() async {
    try {
      final result =
          await FacebookAuth.i.login(permissions: ['public_profile', 'email']);
      if (result.status == LoginStatus.success) {
        final userData = await FacebookAuth.i.getUserData();
        print(userData);
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => MainHomePage()));
      }
    } catch (error) {
      print(error);
    }
  }

  Widget facebookbutton() {
    return InkWell(
      onTap: facebookLogin,
      child: Container(
          width: MediaQuery.of(context).size.width - 245,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all()),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Image.asset("images/facebook.png")),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Facebook",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
            ],
          )),
    );
  }

  Widget colorButton() {
    return InkWell(
      onTap: () async {
        setState(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (
                BuildContext context,
              ) =>
                      SignUpScreen()));
          // circular = true;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 100,
        height: 50,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10), color: color1
                // gradient: LinearGradient(colors: [
                //   Color(0xfffd746c),
                //   Color(0xffff9068),
                //   Color(0xfffd746c)
                // ]),
                ),
        child: Center(
          child: Text(
            "Sign In",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }

  Widget buttonItem(
      String imagepath, String buttonName, double size, Function onTap) {
    return InkWell(
      onTap: () => onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        child: Card(
          color: Colors.white,
          elevation: 8,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                width: 1,
                color: Colors.grey,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget textItem(
      String labletext, TextEditingController controller, bool obscureText) {
    return Container(
      width: MediaQuery.of(context).size.width - 70,
      height: 55,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        style: TextStyle(
          fontSize: 17,
          color: Colors.black,
        ),
        decoration: InputDecoration(
            labelText: labletext,
            labelStyle: TextStyle(
              fontSize: 17,
              color: Colors.black,
            )),
      ),
    );
  }
}
