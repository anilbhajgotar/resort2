import 'package:flutter/material.dart';
import 'package:resorts/pages/bottom_bar.dart';

import 'custome_image_scroll.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPage();
}

class _BookingPage extends State<BookingPage> {
  final TextEditingController _controller = TextEditingController();
  bool check = false, circular = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: SizedBox(child: facebookbutton()),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: SizedBox(
                      child: googlebutton(),
                    ),
                  )
                ],
              ),
              SearchInputFb1(
                  searchController: _controller,
                  hintText: "search by Booking ID"),
            ],
          ),
          Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.book_outlined,
                size: 85,
                color: Colors.grey,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 120),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "No current bookings",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavBarFb5(),
    );
  }

  Widget googlebutton() {
    return InkWell(
      onTap: () {
        setState(() {
          circular = false;
          check = true;
        });
      },
      child: check
          ? Container(
              width: MediaQuery.of(context).size.width - 245,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff4338CA),
                  border: Border.all()
                  // gradient: LinearGradient(colors: [
                  //   Color(0xfffd746c),
                  //   Color(0xffff9068),
                  //   Color(0xfffd746c)
                  // ]),
                  ),
              child: Center(
                child: Text(
                  "HISTORY",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          : Container(
              width: MediaQuery.of(context).size.width - 245,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all()
                  // gradient: LinearGradient(colors: [
                  //   Color(0xfffd746c),
                  //   Color(0xffff9068),
                  //   Color(0xfffd746c)
                  // ]),
                  ),
              child: Center(
                child: Text(
                  "HISTORY",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),
    );
  }

  Widget facebookbutton() {
    return GestureDetector(
      onTap: () {
        setState(() {
          circular = true;
          check = false;
        });
      },
      child: circular
          ? Container(
              width: MediaQuery.of(context).size.width - 245,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff4338CA),
                  border: Border.all()),
              child: Center(
                child: Text(
                  "UPCOMING",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ))
          : Container(
              width: MediaQuery.of(context).size.width - 245,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all()),
              child: Center(
                child: Text(
                  "UPCOMING",
                  style: TextStyle(color: Color(0xff4338CA), fontSize: 16),
                ),
              )),
    );
  }
}
