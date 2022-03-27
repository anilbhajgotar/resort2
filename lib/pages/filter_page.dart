import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:resorts/routes/app_routes.dart';

import 'accordian.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPage();
}

class _FilterPage extends State<FilterPage> {
  final Color color1 = const Color(0xff4338CA);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, bool innerBoxScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                actions: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        "Filter",
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.ResortListPage);
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.highlight_off,
                                color: color1,
                                size: 35,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                Accordion(
                  title: "Property Classification",
                  content: TextField(),
                ),
                Accordion(
                  title: "Today's deals ",
                  content: TextField(),
                ),
                Accordion(
                  title: "Price range",
                  content: TextField(),
                ),
                Accordion(
                  title: "Offers",
                  content: TextField(),
                ),
                Accordion(
                  title: "Booking type",
                  content: TextField(),
                ),
                Accordion(
                  title: "Classification",
                  content: TextField(),
                ),
                Accordion(
                  title: "Available Sections",
                  content: TextField(),
                ),
                Accordion(
                  title: "Discounts",
                  content: TextField(),
                ),
                Accordion(
                  title: "Bedroom(s)",
                  content: TextField(),
                ),
                Accordion(
                  title: "Beds",
                  content: TextField(),
                ),
                Accordion(
                  title: "Amenities",
                  content: TextField(),
                ),
                Accordion(
                  title: "House Rules",
                  content: TextField(),
                ),
                Accordion(
                  title: "Cancellation Policy",
                  content: TextField(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "RESET ALL",
                            style: TextStyle(color: Colors.grey.shade600),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: color1),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "APPLY FILTER",
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
