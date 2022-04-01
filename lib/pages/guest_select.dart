import 'package:flutter/material.dart';
import 'package:resorts/controllers/guest_select.dart';
import 'package:resorts/pages/demo.dart';
import 'package:resorts/pages/resort_list_page.dart';

import '../routes/app_routes.dart';

class GuestSelect extends StatefulWidget {
  @override
  State<GuestSelect> createState() => _GuestSelectState();
}

class _GuestSelectState extends State<GuestSelect> {
  List<RadioModel> sampleData = <RadioModel>[];
  static var guest;
  bool check = false, filling = false;
  final SliverGridDelegate delegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4, crossAxisSpacing: 10, mainAxisSpacing: 10);

  // late final Item catelog;

  @override
  void initState() {
    sampleData.add(new RadioModel(
      false,
      '1',
    ));
    sampleData.add(new RadioModel(
      false,
      '2',
    ));
    sampleData.add(new RadioModel(
      false,
      '3',
    ));
    sampleData.add(new RadioModel(
      false,
      '4',
    ));
    sampleData.add(new RadioModel(
      false,
      '5',
    ));
    sampleData.add(new RadioModel(
      false,
      '6',
    ));
    sampleData.add(new RadioModel(
      false,
      '7',
    ));
    sampleData.add(new RadioModel(
      false,
      '8',
    ));
    sampleData.add(new RadioModel(
      false,
      '9',
    ));
    sampleData.add(new RadioModel(
      false,
      '10',
    ));
    sampleData.add(new RadioModel(
      false,
      '11',
    ));
    sampleData.add(new RadioModel(
      false,
      '12',
    ));
    sampleData.add(new RadioModel(
      false,
      '13',
    ));
    sampleData.add(new RadioModel(
      false,
      '14',
    ));
    sampleData.add(new RadioModel(
      false,
      '15',
    ));
    sampleData.add(new RadioModel(
      false,
      '16',
    ));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Item catalog;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Guest(s)",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                margin: EdgeInsets.all(20),
                child: GridView.builder(
                    gridDelegate: delegate,
                    itemCount: sampleData.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        splashColor: Colors.blueAccent,
                        onTap: () {
                          setState(() {
                            sampleData.forEach(
                                (element) => element.isSelected = false);
                            sampleData[index].isSelected = true;
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(30),
                          child: RadioItem(sampleData[index]),
                        ),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.ResortListPage);
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            // color: Color(0xf9f9f9f9f),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            "SKIP",
                            style: TextStyle(color: Color(0xff4338CA)),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ResortListPage()));
                      },
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xff4338CA),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text(
                          "SAVE",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return new Container(
      // height: 10.0,
      // width: 10.0,
      child: new Center(
        child: new Text(_item.buttonText,
            style: new TextStyle(
                color: _item.isSelected ? Colors.white : Colors.black,
                //fontWeight: FontWeight.bold,
                fontSize: 18.0)),
      ),
      decoration: new BoxDecoration(
        color: _item.isSelected ? Colors.blueAccent : Colors.transparent,
        border: new Border.all(
            width: 1.0,
            color: _item.isSelected ? Colors.blueAccent : Colors.grey),
        borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  // final String text;

  RadioModel(
    this.isSelected,
    this.buttonText,
  );
}
