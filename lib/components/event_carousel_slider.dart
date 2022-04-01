import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:resorts/models/carousel_event.dart';

import '../models/carousel.dart';
// import 'package:flutter_carousel_example/models/carousel.dart';

class EventCarouselSlider extends StatefulWidget {
  final List<CarouselEvent> _carouselList;
  const EventCarouselSlider(this._carouselList);

  @override
  _EventCarouselSlider createState() => _EventCarouselSlider();
}

class _EventCarouselSlider extends State<EventCarouselSlider> {
  int _current = 0;
  List<Widget>? image;
  late List<Widget> imageSlider;

  @override
  void initState() {
    image = widget._carouselList
        .map((e) => Container(
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
                    // color: Colors.white,
                    // height: 115,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child:
                          // Image.network(e.image)
                          CachedNetworkImage(
                        // color: Colors.amber,
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
                      Container(
                        // color: Colors.grey,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, top: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              e.title,
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(left: 5.0, top: 10.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              e.title,
                              style: TextStyle(
                                  // color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300),
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
    return Container(
      // color: Colors.white,
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
