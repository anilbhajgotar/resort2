// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:resorts/pages/bottom_bar.dart';
import 'package:resorts/pages/profile_image.dart';

class ResortDetailsPage extends StatefulWidget {
  ResortDetailsPage({Key? key}) : super(key: key);

  @override
  State<ResortDetailsPage> createState() => _ResortDetailsPage();
}

class _ResortDetailsPage extends State<ResortDetailsPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _pswController = TextEditingController();
  TextEditingController dateCtl = TextEditingController();

  final primaryColor = const Color(0xff4338CA);
  // List<Color> colorsList = [Colors.red, Colors.green, Colors.blue];
  Color? color;
  String dropdownvalue = 'Guest 12';

  // List of items in our dropdown menu
  var items = [
    'Guest 12',
    'Guest 10',
    'Guest 8',
    'Guest 6',
    'Guest 4',
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    final List<Widget> imageSliders = imgList
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item, fit: BoxFit.cover, width: 1000.0),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              'No. ${imgList.indexOf(item)} image',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: googlebutton(),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              // height: 230,
              // height: MediaQuery.of(context).size.height - 550,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                  ),
                  items: imgList
                      .map((item) => Container(
                            child: Center(
                                child: Image.network(item,
                                    fit: BoxFit.cover, width: 1000)),
                          ))
                      .toList(),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Resort",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Instant Booking",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "12 guests",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "1 bedroom",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "1 bed",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                "3 baths",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "250 rs/night",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //property types
            Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Resort type",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Chalets",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Resort area",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "500 Sqm",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Available for",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Families and Singles",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Booking type",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   width: 50,
                    // ),
                    SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Instant Booking",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 100,
              margin: EdgeInsets.all(10),
              child: CarouselSlider(
                options: CarouselOptions(
                  initialPage: 1,
                  viewportFraction: 0.3,
                  enableInfiniteScroll: false,
                ),
                items: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.door_front_door_outlined,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1 Bedroom(s)",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.bed_outlined,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1 Single bed(s)",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.living_outlined,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "2 Indoor Seats",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.chair_outlined,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1 Outdoor Chair",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.door_front_door_outlined,
                          size: 38,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "1 Bedroom(s)",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(blurRadius: 2, blurStyle: BlurStyle.outer)
                    ],
                    borderRadius: BorderRadius.circular(15)),
                // height: MediaQuery.of(context).size.height,

                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Checked In",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "Night(s)",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            "Checked In",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.login_outlined,
                                size: 50,
                                color: primaryColor,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "02:00 PM",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Select Date",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.login_outlined,
                                size: 50,
                                color: primaryColor,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "02:00 PM",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Select Date",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25),
                        child: SizedBox(child: selectDateButton()),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 25),
                        child: SizedBox(child: guestButton()),
                      )
                    ],
                  ),
                ],
              ),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Amenities",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sand games",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Outdoor Swimming Pool",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Playground",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Doorman",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Parking",
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.escalator_outlined,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.pool_outlined,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.sports_tennis,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.boy)),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.directions_car_filled_outlined,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [showAmenities()],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "About Property",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "This section consists of a swimming pool,children's games...",
                      style: TextStyle(fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hosted by Faisal",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ),
                      ),
                      messageButton()
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Joined in july 2020",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Average Response Time : 33 Mins",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                // height: MediaQuery.of(context).size.height,

                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    "House Rules",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Events and parties allowed",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Feather.chevron_right,
                              size: 40,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),
            Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                // height: MediaQuery.of(context).size.height,

                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 2,
                                  child: Text(
                                    "Cancellation Policy",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width / 2,
                                child: Text(
                                  "Strict",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Feather.chevron_right,
                              size: 40,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )),

            // googlebutton()
          ],
        ),
        // bottomNavigationBar: BottomNavBarFb5(),
      ),
    );
  }

  Widget googlebutton() {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),

        // border: Border.all()
        // gradient: LinearGradient(colors: [
        //   Color(0xfffd746c),
        //   Color(0xffff9068),
        //   Color(0xfffd746c)
        // ]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              child: Text(
            "800 rs/night",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          )),
          SizedBox(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: primaryColor),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: SizedBox(
                        child: Text(
                          "Book Now",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        "& Pay At Property",
                        style: TextStyle(fontSize: 14, color: Colors.white60),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget showAmenities() {
    return InkWell(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          width: MediaQuery.of(context).size.width / 2,
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
              "Show All(18) Amenties",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ));
  }

  Widget selectDateButton() {
    return InkWell(
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
      child: Container(
          width: MediaQuery.of(context).size.width / 3,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: primaryColor, width: 3)),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.calendar_month_outlined)),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Select Date",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          )),
    );
  }

  Widget messageButton() {
    return Container(
        margin: EdgeInsets.all(8),
        // width: MediaQuery.of(context).size.width / 3,
        // height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(
              color: primaryColor,
            )),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(
                  Icons.message_outlined,
                  color: primaryColor,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Message",
                style: TextStyle(color: primaryColor, fontSize: 16),
              ),
            ),
          ],
        ));
  }

  Widget guestButton() {
    return Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 50,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            border: Border.all(color: primaryColor, width: 3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(
                Icons.perm_identity_outlined,
              ),
            ),
            DropdownButton(
                value: dropdownvalue,
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownvalue = newValue!;
                  });
                }),
          ],
        ));
  }
}
