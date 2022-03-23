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

  @override
  void initState() {
    image = widget.carouselList
        .map((e) => Container(
              // decoration: BoxDecoration(boxShadow: [
              //   BoxShadow(
              //     blurStyle: BlurStyle.outer,
              //     blurRadius: 3,
              //   )
              // ], borderRadius: BorderRadius.circular(10)),
              // width: 350,
              // margin: EdgeInsets.all(10),
              child: Stack(
                children: <Widget>[
                  Container(
                    // height: 115,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: CachedNetworkImage(
                        // height: 100,
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
                ],
              ),
            ))
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      child: Column(
        children: [
          CarouselSlider(
              items: image,
              options: CarouselOptions(
                  autoPlay: false,
                  height: 230,
                  initialPage: 1,
                  enlargeCenterPage: false,
                  // aspectRatio: 16/9,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.carouselList.map((e) {
              int index = widget.carouselList.indexOf(e);
              return Container(
                width: 8,
                height: 8,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4)),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
