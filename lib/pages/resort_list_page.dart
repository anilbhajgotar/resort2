import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:resorts/components/resort_list_carousel.dart';
import 'package:resorts/controllers/guest_select.dart';
import 'package:resorts/pages/bottom_bar.dart';
import 'package:resorts/pages/custome_image_scroll.dart';
import 'package:resorts/pages/demo.dart';
import 'package:resorts/pages/guest_select.dart';
import 'package:resorts/pages/main_home_page.dart';
import 'package:resorts/pages/profile_image.dart';
import 'package:resorts/routes/app_routes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../components/carousel_data_found.dart';
import '../components/carousel_loading.dart';
import '../controllers/home_controllers.dart';

class ResortListPage extends StatefulWidget {
  late final Item catelog;
  ResortListPage({Key? key, Item? catalog}) : super(key: key);

  @override
  State<ResortListPage> createState() => _ResortListPageState();
}

class _ResortListPageState extends State<ResortListPage> {
  String dropdownvalue = 'All types';
  final Color color1 = const Color(0xff4338CA);
  final Color color2 = HexColor('#f9f9f9');
  final Color color3 = HexColor('#585858');
  final Color color4 = HexColor('#ff7a8a');
  TextEditingController dateCtl = TextEditingController();

  // List of items in our dropdown menu

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Color color2 = HexColor('#f9f9f9');

    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: BottomNavBarFb5(),
      body: NestedScrollView(
        headerSliverBuilder: (context, bool innerBoxScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: color2,
              elevation: 0.0,
              leading: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.HOME);
                },
                child: Icon(
                  Icons.chevron_left_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              title: SearchInputFb1(
                  searchController: _textEditingController,
                  hintText: "All cities"),
            ),
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
                            InkWell(
                              onTap: () async {
                                DateTime? date = DateTime(1900);
                                FocusScope.of(context)
                                    .requestFocus(new FocusNode());

                                date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime(2100));

                                dateCtl.text = date!.toIso8601String();
                              },
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          Icons.calendar_month_outlined,
                                          color: color1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Dates",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GuestSelect()));
                        },
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Feather.user,
                                color: color1,
                              ),
                            ),
                            Container(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Guest",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(Icons.keyboard_arrow_down,
                                  color: color1),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, AppRoutes.FilterPage);
                              },
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Icon(
                                          Icons.tune,
                                          color: color1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        "Filter",
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Align(
                      //   alignment: Alignment.center,
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         child: Icon(
                      //           Icons.house,
                      //           color: color1,
                      //         ),
                      //       ),
                      //       Container(
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(8.0),
                      //           child: DropdownButton(
                      //               value: dropdownvalue,
                      //               items: items.map((String items) {
                      //                 return DropdownMenuItem(
                      //                   value: items,
                      //                   child: Text(items),
                      //                 );
                      //               }).toList(),
                      //               onChanged: (String? newValue) {
                      //                 setState(() {
                      //                   dropdownvalue = newValue!;
                      //                 });
                      //               }),
                      //         ),
                      //       ),
                      //       // Container(
                      //       //   child: Icon(Icons.keyboard_arrow_down,
                      //       //       color: color1),
                      //       // ),
                      //     ],
                      //   ),
                      // ),
                      Row(
                        children: [
                          Container(
                            child: Icon(
                              Icons.sort_outlined,
                              color: color1,
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Sort",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )
          ];
        },
        body:
            // Scaffold(

            // body:
            ListView(
          // shrinkWrap: true,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3, blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8)),
              // height: 230,
              // height: MediaQuery.of(context).size.height - 550,
              child: Column(
                children: [
                  GetBuilder<HomeController>(
                    builder: (_c) {
                      if (_c.isLoading) if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return CarouselLoading();
                      else if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return Container();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3, blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8)),
              // height: 230,
              // height: MediaQuery.of(context).size.height - 550,
              child: Column(
                children: [
                  GetBuilder<HomeController>(
                    builder: (_c) {
                      if (_c.isLoading) if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return CarouselLoading();
                      else if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return Container();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3, blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8)),
              // height: 230,
              // height: MediaQuery.of(context).size.height - 550,
              child: Column(
                children: [
                  GetBuilder<HomeController>(
                    builder: (_c) {
                      if (_c.isLoading) if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return CarouselLoading();
                      else if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return Container();
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3, blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8)),
              // height: 230,
              // height: MediaQuery.of(context).size.height - 550,
              child: Column(
                children: [
                  GetBuilder<HomeController>(
                    builder: (_c) {
                      if (_c.isLoading) if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return CarouselLoading();
                      else if (_c.carouselData.length > 0)
                        return ResortListCarousel(_c.carouselData);
                      else
                        return Container();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        // bottomNavigationBar: BottomNavBarFb5(),

        // )
      ),
    ));
  }
}
