import 'dart:convert';
import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/carousel.dart';
// import 'package:flutter_carousel_example/models/carousel.dart';

class ResortListCarousel extends StatefulWidget {
  final List<Carousel> carouselList;
  const ResortListCarousel(this.carouselList);

  @override
  _ResortListCarousel createState() => _ResortListCarousel();
}

class _ResortListCarousel extends State<ResortListCarousel> {
  int _current = 0;
  List<Widget>? image;
  late List<Widget> imageSlider;
  void functionData() {}
  @override
  void initState() {
    image = widget.carouselList
        .map((e) => Container(
              decoration: BoxDecoration(
                  // border: Border.all(),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 3, blurStyle: BlurStyle.outer)
                  ],
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                children: <Widget>[
                  Container(
                    // height: 115,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: CachedNetworkImage(
                        height: 150,
                        fit: BoxFit.cover,
                        // width: 400,
                        imageUrl: e.image,
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) => Center(
                          child: CircularProgressIndicator(
                            value: downloadProgress.progress,
                          ),
                        ),
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
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
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
                                      color: Colors.grey.shade700,
                                      fontSize: 14),
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
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ],
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
    return ListView.builder(
        itemCount: image!.length,
        itemBuilder: (context, index) {
          final catalog = image![index];
          return Container(
            margin: EdgeInsets.all(10),
            child: CarouselSlider(
                items: image,
                options: CarouselOptions(
                    autoPlay: false,
                    height: 230,
                    initialPage: 0,
                    enlargeCenterPage: false,
                    // aspectRatio: 16/9,
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    })),
          );
        });
    // Container(
    //   // margin: EdgeInsets.all(10),
    //   child: Column(
    //     children: [
    //       CarouselSlider(
    //           items: image,
    //           options: CarouselOptions(
    //               autoPlay: false,
    //               height: 230,
    //               initialPage: 0,
    //               enlargeCenterPage: false,
    //               // aspectRatio: 16/9,
    //               enableInfiniteScroll: false,
    //               viewportFraction: 1,
    //               onPageChanged: (index, reason) {
    //                 setState(() {
    //                   _current = index;
    //                 });
    //               })),
    //       // Row(
    //       //   mainAxisAlignment: MainAxisAlignment.center,
    //       //   children: widget.carouselList.map((e) {
    //       //     int index = widget.carouselList.indexOf(e);
    //       //     return Container(
    //       //       width: 8,
    //       //       height: 8,
    //       //       margin: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
    //       //       decoration: BoxDecoration(
    //       //           shape: BoxShape.circle,
    //       //           color: _current == index
    //       //               ? Color.fromRGBO(0, 0, 0, 0.9)
    //       //               : Color.fromRGBO(0, 0, 0, 0.4)),
    //       //     );
    //       //   }).toList(),
    //       // )
    //     ],
    //   ),
    // );
  }
}
