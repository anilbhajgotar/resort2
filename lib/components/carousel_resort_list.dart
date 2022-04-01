import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/carousel.dart';
// import 'package:flutter_carousel_example/models/carousel.dart';

class CarouselResortList extends StatefulWidget {
  final List<Carousel> carouselList;
  const CarouselResortList(this.carouselList);

  @override
  _CarouselResortList createState() => _CarouselResortList();
}

class _CarouselResortList extends State<CarouselResortList> {
  int _current = 0;
  List<Widget>? image;
  late List<Widget> imageSlider;

  @override
  void initState() {
    image = widget.carouselList
        .map((e) => Container(
              height: 230,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.outer,
                      blurRadius: 3,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10)),
              // width: 350,
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    // height: 115,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Image.network(e.image)),
                  ),
                  Column(
                    children: [
                      Container(
                        // color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, top: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              e.title,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, top: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              e.title,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ))
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // print("data Found");
    return Container(
      margin: EdgeInsets.all(10),
      child: CarouselSlider(
          items: image,
          options: CarouselOptions(
              autoPlay: false,
              height: 230,
              initialPage: 1,
              enlargeCenterPage: false,
              // aspectRatio: 16/9,
              enableInfiniteScroll: false,
              viewportFraction: 0.45,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              })),
    );
  }
}