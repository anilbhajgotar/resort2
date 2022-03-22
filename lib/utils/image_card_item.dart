import 'package:flutter/material.dart';
import 'package:horizontal_card_pager/card_item.dart';

class ImageCarditem extends CardItem {
  final Widget image;

  ImageCarditem({required this.image});

  @override
  Widget? buildWidget(double diffPosition) {
    // TODO: implement buildWidget
    throw UnimplementedError();
  }
}

class IconTitleCardItem extends CardItem {
  final IconData iconData;
  final String text;
  final Color selectedBgColor;
  final Color noSelectedBgColor;
  final Color selectedIconTextColor;
  final Color noSelectedIconTextColor;

  IconTitleCardItem(
      {required this.iconData,
      required this.text,
      this.selectedIconTextColor = Colors.white,
      this.noSelectedIconTextColor = Colors.grey,
      this.selectedBgColor = Colors.blue,
      this.noSelectedBgColor = Colors.white});

  @override
  Widget? buildWidget(double diffPosition) {
    // TODO: implement buildWidget
    throw UnimplementedError();
  }
}
