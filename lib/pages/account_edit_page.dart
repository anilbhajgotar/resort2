// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:resorts/pages/bottom_bar.dart';
import 'package:resorts/pages/profile_image.dart';

class AccountEditPage extends StatefulWidget {
  AccountEditPage({Key? key}) : super(key: key);

  @override
  State<AccountEditPage> createState() => _AccountEditPage();
}

class _AccountEditPage extends State<AccountEditPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pswController = TextEditingController();
  TextEditingController dateCtl = TextEditingController();

  final primaryColor = const Color(0xff4338CA);
  // List<Color> colorsList = [Colors.red, Colors.green, Colors.blue];
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(color: primaryColor),
              height: 250,
              // height: MediaQuery.of(context).size.height - 550,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Image.network(
                                "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=988&q=80",
                                fit: BoxFit.cover),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "ANIL BHAJGOTAR",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              // height: MediaQuery.of(context).size.height,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _emailController,
                  obscureText: false,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Email ID",
                      // errorText: "Not verified",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              // height: MediaQuery.of(context).size.height,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _pswController,
                  obscureText: false,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Mobile number",
                      errorText: "Not verified",
                      // counterText: "verified",
                      // helperText: "removed",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              // height: MediaQuery.of(context).size.height,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _pswController,
                  obscureText: false,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Secondary phone number",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                // height: MediaQuery.of(context).size.height,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: dateCtl,
                    decoration: InputDecoration(
                      labelText: "Date of birth",
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Ex. Insert your dob",
                    ),
                    onTap: () async {
                      DateTime? date = DateTime(1900);
                      FocusScope.of(context).requestFocus(new FocusNode());

                      date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));

                      dateCtl.text = date!.toIso8601String();
                    },
                  ),
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                // height: MediaQuery.of(context).size.height,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Gender",
                          style: TextStyle(fontSize: 18),
                        )),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Icon(
                                  SimpleLineIcons.user,
                                  color: Colors.black,
                                )),
                            Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                child: Icon(SimpleLineIcons.user_female)),
                          ],
                        )),
                  ],
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              // height: MediaQuery.of(context).size.height,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _pswController,
                  obscureText: false,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Nationality",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              // height: MediaQuery.of(context).size.height,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _pswController,
                  obscureText: false,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Address",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              // height: MediaQuery.of(context).size.height,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _pswController,
                  obscureText: false,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "Spoken Languages",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              // height: MediaQuery.of(context).size.height,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _pswController,
                  obscureText: false,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      labelText: "About Me",
                      labelStyle: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      )),
                ),
              ),
            ),
            googlebutton()
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBarFb5(),
    );
  }

  Widget googlebutton() {
    return InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          width: MediaQuery.of(context).size.width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color(0xff4338CA),
            // border: Border.all()
            // gradient: LinearGradient(colors: [
            //   Color(0xfffd746c),
            //   Color(0xffff9068),
            //   Color(0xfffd746c)
            // ]),
          ),
          child: Center(
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ));
  }
}
