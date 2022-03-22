import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  bool check = false, circular = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
        ],
      )),
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
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(Icons.notifications, color: Colors.white)),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Notification",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
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
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.notifications,
                        color: Color(0xff4338CA),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Notification",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
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
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.message,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Messages",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ))
          : Container(
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
                      child: Icon(
                        Icons.message,
                        color: Color(0xff4338CA),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Messages",
                      style: TextStyle(color: Color(0xff4338CA), fontSize: 16),
                    ),
                  ),
                ],
              )),
    );
  }
}
