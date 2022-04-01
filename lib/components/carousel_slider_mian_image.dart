import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:resorts/models/carousel_event.dart';
import 'package:resorts/models/carousel_home_main_image.dart';

import '../models/carousel.dart';
// import 'package:flutter_carousel_example/models/carousel.dart';

class CarouselSliderMainImage extends StatefulWidget {
  final List<CarouselMainImage> _carouselList;
  const CarouselSliderMainImage(this._carouselList);

  @override
  _CarouselSliderMainImage createState() => _CarouselSliderMainImage();
}

class _CarouselSliderMainImage extends State<CarouselSliderMainImage> {
  final Color color1 = const Color(0xff4338CA);
  final Color color2 = HexColor('#f9f9f9');
  final Color color3 = HexColor('#585858');
  final Color color4 = HexColor('#ff7a8a');
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
              // margin: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child:
                    // Image.network(e.image)
                    CachedNetworkImage(
                  // color: Colors.amber,
                  // height: 100,
                  fit: BoxFit.fill,
                  // width: 400,
                  imageUrl: e.image,

                  // Image.network(e.image);//  e.image,

                  errorWidget: (context, url, error) => Icon(Icons.error),
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                    child: CircularProgressIndicator(
                      value: downloadProgress.progress,
                    ),
                  ),
                ),
              ),
            ))
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      // margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          CarouselSlider(
              items: image,
              options: CarouselOptions(
                autoPlay: false,
                // height: 300,
                height: MediaQuery.of(context).size.height - 350.0,

                initialPage: 4,
                enlargeCenterPage: false,
                // aspectRatio: 16/9,
                enableInfiniteScroll: false,
                viewportFraction: 1.0,
                // onPageChanged: (index, reason) {
                //   setState(() {
                //     _current = index;
                //   });
                // }
              )),
          Column(
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
                        color: color1, borderRadius: BorderRadius.circular(10)),
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
        ],
      ),
    );
  }
}
