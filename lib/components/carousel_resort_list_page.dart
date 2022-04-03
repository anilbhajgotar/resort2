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

  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);
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
                      child:
                          // Image.network(e.image)
                          CachedNetworkImage(
                        height: 100,
                        fit: BoxFit.cover,
                        // width: 400,
                        imageUrl: e.image,

                        // Image.network(e.image);//  e.image,

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
                                  // "Test Title",
                                  e.title,
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
                                        e.guest + " guests",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      e.bedroom.toString() + " bedroom",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      e.bed.toString(),
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      e.bath.toString() + " baths",
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
                                  e.price.toString() + " SAR/night",
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
    // print("data Found");
    return ListView.builder(
        itemCount: image!.length,
        itemBuilder: (context, index) {
          final catalog = image![index];
          return
              // Container(
              //   child: catalog,
              // );
              Container(
            margin: EdgeInsets.all(10),
            child: CarouselSlider(
                items: <Widget>[image![index]],
                options: CarouselOptions(
                    autoPlay: false,
                    height: 230,
                    initialPage: 1,
                    enlargeCenterPage: false,
                    // aspectRatio: 16/9,
                    enableInfiniteScroll: false,
                    viewportFraction: 1.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    })),
          );
        });
    // Container(
    //   margin: EdgeInsets.all(10),
    //   child: CarouselSlider(
    //       items: image,
    //       options: CarouselOptions(
    //           autoPlay: false,
    //           height: 230,
    //           initialPage: 1,
    //           enlargeCenterPage: false,
    //           // aspectRatio: 16/9,
    //           enableInfiniteScroll: false,
    //           viewportFraction: 0.45,
    //           onPageChanged: (index, reason) {
    //             setState(() {
    //               _current = index;
    //             });
    //           })),
    // );
  }
}
