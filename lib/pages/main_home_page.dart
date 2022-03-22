import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:infinite_carousel/infinite_carousel.dart';
import 'package:horizontal_card_pager/horizontal_card_pager.dart';
import 'package:horizontal_card_pager/card_item.dart';
import 'package:resorts/components/blog_carousel_slider.dart';
import 'package:resorts/components/event_carousel_slider.dart';
import 'package:resorts/pages/blog_carousel_widget.dart';
import 'package:resorts/pages/bottom_bar.dart';
import 'package:resorts/pages/custome_image_scroll.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';

import '../components/carousel_data_found.dart';
import '../components/carousel_loading.dart';
import '../controllers/home_controllers.dart';

class MainHomePage extends StatefulWidget {
  MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage>
    with SingleTickerProviderStateMixin {
  final Color color1 = const Color(0xff4338CA);
  final Color color2 = HexColor('#f9f9f9');
  final Color color3 = HexColor('#585858');
  final Color color4 = HexColor('#ff7a8a');
  TabController? _tabController;
  int activeIndex = 3;
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> titles = [
      "RED",
      "YELLOW",
      "BLACK",
      "CYAN",
      "BLUE",
      "GREY",
    ];

    final List<Widget> images = [
      Container(
        color: Colors.red,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.black,
      ),
      Container(
        color: Colors.cyan,
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.grey,
      ),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavBarFb5(),
      body: SafeArea(
        child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: Row(
                    children: [
                      Icon(FontAwesome5.user_circle, color: Colors.black54),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Hello!",
                          style: TextStyle(color: color3, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  backgroundColor: color2,
                  // centerTitle: true,
                  // pinned: true,
                  floating: true,
                ),
                SliverAppBar(
                  title: Center(
                    child: SearchInputFb1(
                        searchController: _controller,
                        hintText: "Where do you want to Go?"),
                  ),
                  backgroundColor: color2,
                  // centerTitle: true,
                  pinned: true,
                  floating: true,
                ),
              ];
            },
            body:
                
                ListView(
              children: [
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 50),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.yellow.shade400,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 30,
                                width: 200,
                                child: Center(
                                  child: Text(
                                    'No More Payments',
                                    style: TextStyle(
                                      color: color3,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 5),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: color1,
                                    borderRadius: BorderRadius.circular(10)),
                                height: 45,
                                width: 250,
                                child: Center(
                                  child: Text(
                                    'BOOK NOW',
                                    style: TextStyle(
                                      color: color2,
                                      fontSize: 38,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // height: 500.0,
                      height: MediaQuery.of(context).size.height - 350.0,
                      width: MediaQuery.of(context).size.width - 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(blurRadius: 5, blurStyle: BlurStyle.outer)
                          ],
                          color: color2,
                          image: DecorationImage(
                              image: new AssetImage("images/resort/resort.jpg"),
                              //  NetworkImage(
                              //     "https://www.excelebiz.in/major-advantages-of-booking-a-hotel-on-online/"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
//Resort Carousal Slide
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Resorts",
                            style: TextStyle(
                                fontSize: 18,
                                color: color3,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GetBuilder<HomeController>(
                      builder: (_c) {
                        if (_c.isLoading) if (_c.carouselData.length > 0)
                          return CarouselSliderDataFound(_c.carouselData);
                        else
                          return CarouselLoading();
                        else if (_c.carouselData.length > 0)
                          return CarouselSliderDataFound(_c.carouselData);
                        else
                          return Container();
                      },
                    ),
                    
//Event Carousal Slide
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Events",
                            style: TextStyle(
                                fontSize: 18,
                                color: color3,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GetBuilder<HomeController>(
                      builder: (_c) {
                        if (_c.isLoading) if (_c.carouselData.length > 0)
                          return EventCarouselSlider(_c.carouselData);
                        else
                          return CarouselLoading();
                        else if (_c.carouselData.length > 0)
                          return EventCarouselSlider(_c.carouselData);
                        else
                          return Container();
                      },
                    ),

//Blog Carousal Slide
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Blog",
                            style: TextStyle(
                                fontSize: 18,
                                color: color3,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GetBuilder<HomeController>(
                      builder: (_c) {
                        if (_c.isLoading) if (_c.carouselData.length > 0)
                          return BlogCarouselSlider(_c.carouselData);
                        else
                          return CarouselLoading();
                        else if (_c.carouselData.length > 0)
                          return BlogCarouselSlider(_c.carouselData);
                        else
                          return Container();
                      },
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}