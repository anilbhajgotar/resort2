import 'package:flutter/material.dart';

Widget buildBlogCarousel(Widget image, int index) => Container(
      margin: EdgeInsets.all(8),
      // width: 150,
      decoration: BoxDecoration(
          // border: Border.all(),
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 4, blurStyle: BlurStyle.outer)],
          borderRadius: BorderRadius.circular(10)),
      // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 1),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          "images/resort/resort.jpg",
          fit: BoxFit.fill,
        ),
      ),
    );
