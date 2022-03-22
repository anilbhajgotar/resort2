import 'package:flutter/material.dart';

class BottomNavBarFb5 extends StatelessWidget {
  const BottomNavBarFb5({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xff4338CA), Color(0xff6D28D9)]),
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconBottomBar(
                    text: "Home",
                    icon: Icons.home,
                    selected: true,
                    onPressed: () {}),
                IconBottomBar(
                    text: "Search",
                    icon: Icons.search_outlined,
                    selected: false,
                    onPressed: () {}),
                IconBottomBar(
                    text: "Add",
                    icon: Icons.add_to_photos_outlined,
                    selected: false,
                    onPressed: () {}),
                IconBottomBar(
                    text: "Cart",
                    icon: Icons.local_grocery_store_outlined,
                    selected: false,
                    onPressed: () {}),
                IconBottomBar(
                    text: "Calendar",
                    icon: Icons.date_range_outlined,
                    selected: false,
                    onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon:
              Icon(icon, size: 25, color: selected ? accentColor : Colors.grey),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              height: .1,
              color: selected ? accentColor : Colors.grey),
        )
      ],
    );
  }
}







// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:resorts/pages/bottom_bar.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class DemoPage extends StatefulWidget {
//   DemoPage({Key? key}) : super(key: key);

//   @override
//   State<DemoPage> createState() => _DemoPageState();
// }

// class _DemoPageState extends State<DemoPage> {
//   @override
//   Widget build(BuildContext context) {
//     final List<String> imgList = [
//       'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//       'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//       'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//       'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//       'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//       'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
//     ];

//     final List<Widget> imageSliders = imgList
//         .map((item) => Container(
//               child: Container(
//                 margin: EdgeInsets.all(5.0),
//                 child: ClipRRect(
//                     borderRadius: BorderRadius.all(Radius.circular(5.0)),
//                     child: Stack(
//                       children: <Widget>[
//                         Image.network(item, fit: BoxFit.cover, width: 1000.0),
//                         Positioned(
//                           bottom: 0.0,
//                           left: 0.0,
//                           right: 0.0,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: [
//                                   Color.fromARGB(200, 0, 0, 0),
//                                   Color.fromARGB(0, 0, 0, 0)
//                                 ],
//                                 begin: Alignment.bottomCenter,
//                                 end: Alignment.topCenter,
//                               ),
//                             ),
//                             padding: EdgeInsets.symmetric(
//                                 vertical: 10.0, horizontal: 20.0),
//                             child: Text(
//                               'No. ${imgList.indexOf(item)} image',
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )),
//               ),
//             ))
//         .toList();
//     return Scaffold(
//       bottomNavigationBar: BottomNavBarFb5(),
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         title: Text(
//           "Saved Resorts",
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Container(
//           height: 300,
//           decoration: BoxDecoration(
//               boxShadow: [BoxShadow(blurRadius: 3, blurStyle: BlurStyle.outer)],
//               borderRadius: BorderRadius.circular(10)),
//           margin: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     topRight: Radius.circular(10)),
//                 child: CarouselSlider(
//                   options: CarouselOptions(
//                     viewportFraction: 1.0,
//                     enableInfiniteScroll: false,
//                   ),
//                   items: imgList
//                       .map((item) => Container(
//                             child: Center(
//                                 child: Image.network(item,
//                                     fit: BoxFit.cover, width: 1000)),
//                           ))
//                       .toList(),
//                 ),
//               ),
//               Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               "Resort",
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Align(
//                             alignment: Alignment.centerRight,
//                             child: Text(
//                               "Instant Booking",
//                               style: TextStyle(
//                                   color: Colors.grey.shade600, fontSize: 14),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         child: Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//                           children: [
//                             Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(4.0),
//                                 child: Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     "12 guests",
//                                     style: TextStyle(fontSize: 12),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(4.0),
//                                 child: Text(
//                                   "1 bedroom",
//                                   style: TextStyle(fontSize: 12),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(4.0),
//                                 child: Text(
//                                   "1 bed",
//                                   style: TextStyle(fontSize: 12),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               child: Padding(
//                                 padding: const EdgeInsets.all(4.0),
//                                 child: Text(
//                                   "3 baths",
//                                   style: TextStyle(fontSize: 12),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Align(
//                             alignment: Alignment.centerRight,
//                             child: Text(
//                               "250 rs/night",
//                               style: TextStyle(fontSize: 18),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               )
//             ],
//           )),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:resorts/pages/accordian.dart';

// class DemoPage extends StatelessWidget {
//   const DemoPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Kindacode.com',
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "FAQ",
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//             Accordion(
//               title: "What is Cancellation Policy?",
//               content: TextField(),
//             ),
//             Accordion(
//               title: "Can I Cancel the 24-hour request?",
//               content: TextField(),
//             ),
//             Accordion(
//               title:
//                   "What can i do if a property doesn't match description or something is missing?",
//               content: TextField(),
//             ),
//             Accordion(
//               title: "How can I contact the host?",
//               content: TextField(),
//             ),
//             Accordion(
//               title: "How do reviews work?",
//               content: TextField(),
//             ),
//             Accordion(
//               title: "How can I cancel the reservation?",
//               content: TextField(),
//             ),
//             Accordion(
//               title: "What is the instant Booking and 24-hour request?",
//               content: TextField(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

// class DemoPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Welcome to Flutter'),
//         ),
//         body: ListView(
//           children: <Widget>[
//             TopSection(),
//             // ButtonSection(),
//             // TextSection(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TopSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: <Widget>[
//         // The containers in the background
//         new Column(
//           children: <Widget>[
//             Container(
//               height: 50,
//               color: Colors.black,
//             )
//           ],
//         ),
//         // The card widget with top padding,
//         // incase if you wanted bottom padding to work,
//         // set the `alignment` of container to Alignment.bottomCenter
//         new Container(
//           alignment: Alignment.topCenter,
//           padding: new EdgeInsets.only(
//             top: MediaQuery.of(context).size.height * .32,
//             // right: 20.0,
//             // left: 20.0
//           ),
//           child: new Container(
//             decoration: new BoxDecoration(
//                 color: Theme.of(context).backgroundColor,
//                 borderRadius: new BorderRadius.only(
//                     topLeft: const Radius.circular(10.0),
//                     topRight: const Radius.circular(10.0))),
//             padding: EdgeInsets.only(top: 10.0, left: 32, right: 32),
//             height: 60.0,
//             width: MediaQuery.of(context).size.width,
//             child: Container(
//                 child: Row(
//               children: <Widget>[
//                 Expanded(
//                     child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     Container(
//                         padding: EdgeInsets.only(bottom: 8.0),
//                         child: Text('Oeschinen Lake Campground',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                             ))),
//                     Text(
//                       'Kandersteg, Switzerland',
//                       style: TextStyle(
//                         color: Colors.grey[100],
//                       ),
//                     ),
//                   ],
//                 )),
//                 Icon(
//                   Icons.star,
//                   color: Colors.red[500],
//                 ),
//                 Text('41'),
//               ],
//             )),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class ButtonSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final buttonColor = Theme.of(context).primaryColor;

//     return Container(
//         padding: EdgeInsets.only(top: 30.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             ButtonIcon(buttonColor, Icons.call, 'CALL'),
//             ButtonIcon(buttonColor, Icons.near_me, 'ROUTE'),
//             ButtonIcon(buttonColor, Icons.share, 'SHARE'),
//           ],
//         ));
//   }
// }

// class ButtonIcon extends StatelessWidget {
//   final Color color;
//   final IconData icon;
//   final String label;

//   ButtonIcon(this.color, this.icon, this.label);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         Icon(
//           icon,
//           color: color,
//         ),
//         Text(
//           label,
//           style: TextStyle(color: color),
//         )
//       ],
//     );
//   }
// }

// class TextSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: EdgeInsets.all(32.0),
//         child: Text(
//             'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
//             'Alps. Situated 1,578 meters above sea level, it is one of the '
//             'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
//             'half-hour walk through pastures and pine forest, leads you to the '
//             'lake, which warms to 20 degrees Celsius in the summer. Activities '
//             'enjoyed here include rowing, and riding the summer toboggan run.',
//             softWrap: true));
//   }
// }

// import 'package:flutter/material.dart';

// import 'package:flutter/material.dart';

// class AuctionItem {
//   final String name;
//   final String username;
//   final String description;
//   final String imgUrl;

//   final String time;
//   final String price;

//   AuctionItem(
//       {required this.name,
//       required this.username,
//       required this.description,
//       required this.imgUrl,
//       required this.time,
//       required this.price});
// }

// List<AuctionItem> auctionItems = [
//   AuctionItem(
//       name: "Purple splash",
//       description:
//           "This paint was made via the luxurious lorem ipsum celebration. If you are reading this you are amazing.",
//       username: "@flutterbricks",
//       imgUrl:
//           "https://images.unsplash.com/photo-1563089145-599997674d42?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2340&q=80",
//       time: "20h: 35m: 08s",
//       price: "15.97 ETH"),
//   AuctionItem(
//       name: "Neon Glass",
//       description:
//           "This paint was made via the luxurious lorem ipsum celebration. If you are reading this you are amazing.",
//       username: "@henry",
//       imgUrl:
//           "https://images.unsplash.com/photo-1544365558-35aa4afcf11f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80",
//       time: "20h: 35m: 08s",
//       price: "15.97 ETH"),
// ];

// // Give a sized box as its parent with width/height.
// class CustomCarouselFB2 extends StatefulWidget {
//   const CustomCarouselFB2({Key? key}) : super(key: key);

//   @override
//   _CustomCarouselFB2State createState() => _CustomCarouselFB2State();
// }

// class _CustomCarouselFB2State extends State<CustomCarouselFB2> {
//   final double carouselItemMargin = 16;

//   late PageController _pageController;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(initialPage: 0, viewportFraction: 1);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PageView.builder(
//         controller: _pageController,
//         itemCount: auctionItems.length,
//         onPageChanged: (int position) {},
//         itemBuilder: (BuildContext context, int position) {
//           return imageSlider(position);
//         });
//   }

//   Widget imageSlider(int position) {
//     return AnimatedBuilder(
//       animation: _pageController,
//       builder: (BuildContext context, widget) {
//         return Container(
//           margin: EdgeInsets.all(carouselItemMargin),
//           child: Center(child: widget),
//         );
//       },
//       child: CardFb1(item: auctionItems[position]),
//     );
//   }
// }

// class CardFb1 extends StatelessWidget {
//   final AuctionItem item;

//   const CardFb1({required this.item, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Import the NFT Hero for animations
//         // Navigator.push(
//         //     context, MaterialPageRoute(builder: (_) => NftHero(item: item)));
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width / 1,
//         padding: const EdgeInsets.all(20.0),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5.0),
//           border: Border.all(color: Colors.grey),
//           boxShadow: [
//             BoxShadow(
//                 offset: const Offset(10, 20),
//                 blurRadius: 10,
//                 spreadRadius: 0,
//                 color: Colors.grey.withOpacity(.05)),
//           ],
//         ),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   item.name,
//                   style: const TextStyle(color: Colors.white),
//                 ),
//                 Text(
//                   item.username,
//                   style: const TextStyle(color: Colors.grey),
//                 )
//               ],
//             ),
//             const SizedBox(
//               height: 10.0,
//             ),
//             Hero(
//               tag: item.imgUrl,
//               child: Image.network(
//                 item.imgUrl,
//                 fit: BoxFit.cover,
//                 height: MediaQuery.of(context).size.height / 3.75,
//               ),
//             ),
//             const SizedBox(
//               height: 25.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   item.time,
//                   style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold),
//                 ),
//                 Text(
//                   item.price,
//                   style: const TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold),
//                 )
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text(
//                   "Remaining Time",
//                   style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w300),
//                 ),
//                 Text(
//                   "Highest Bid",
//                   style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 14,
//                       fontWeight: FontWeight.w300),
//                 )
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }










//import 'package:accordion/accordion.dart';
// import 'package:flutter/material.dart';

// class DemoPage extends StatelessWidget {
//   const DemoPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.chevron_left, size: 35, color: Colors.black),
//         backgroundColor: Colors.white,
//         title: Text(
//           "Support-Guest",
//           style: TextStyle(color: Color(0xff4338CA)),
//         ),
//       ),
//       body: AccordionPage(),
//     );
//   }
// }

// /// Main example page
// class AccordionPage extends StatelessWidget //__
// {
//   // const AccordionPage({required Key key}) : super(key: key);

//   // final _headerStyle = const TextStyle(
//   //     color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
//   // final _contentStyleHeader = const TextStyle(
//   //     color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
//   final _contentStyle = const TextStyle(
//       color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
//   final _loremIpsum =
//       '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

//   @override
//   build(context) => Scaffold(
//         backgroundColor: Colors.blueGrey[100],
//         // appBar: AppBar(
//         //   title: Center(child: const Text('Support-Guest')),
//         // ),
//         body: Column(
//           children: [
//             Text("data"),
//             Accordion(

//               children: [
//                 Title(color: null,
//                 child: Text(:),)
//                 AccordionSection(
                  
//                   isOpen: false,
//                   // rightIcon:
//                   //     const Icon(Icons.insights_rounded, color: Colors.black12),
//                   headerBackgroundColor: Colors.red,
//                   // headerBackgroundColorOpened: Colors.white,
//                   header: Text('What is Cancellation Policy?',
//                       style: TextStyle(fontSize: 16, color: Colors.black)),
//                   content: Text(_loremIpsum, style: _contentStyle),
//                   contentHorizontalPadding: 20,
//                   contentBorderWidth: 1,
//                   // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
//                   // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
//                 ),
//               ],
//             )
//             // Accordion(
//             //   maxOpenSections: 1,
//             //   // headerBackgroundColorOpened: Colors.black54,
//             //   // headerPadding:
//             //   //     const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
//             //   // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
//             //   // sectionClosingHapticFeedback: SectionHapticFeedback.light,
//             //   // openAndCloseAnimation: false,
//             //   children: [
//             //     AccordionSection(
//             //       isOpen: false,
//             //       // rightIcon:
//             //       //     const Icon(Icons.insights_rounded, color: Colors.black12),
//             //       headerBackgroundColor: Colors.red,
//             //       // headerBackgroundColorOpened: Colors.white,
//             //       header: Text('What is Cancellation Policy?',
//             //           style: TextStyle(fontSize: 16, color: Colors.black)),
//             //       content: Text(_loremIpsum, style: _contentStyle),
//             //       contentHorizontalPadding: 20,
//             //       contentBorderWidth: 1,
//             //       // sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
//             //       // sectionClosingHapticFeedback: SectionHapticFeedback.vibrate,
//             //     ),
//             //     AccordionSection(
//             //       isOpen: false,
//             //       leftIcon:
//             //           const Icon(Icons.compare_rounded, color: Colors.white),
//             //       header: Text('About Us', style: _headerStyle),
//             //       contentBorderColor: const Color(0xffffffff),
//             //       headerBackgroundColorOpened: Colors.amber,
//             //       content: Row(
//             //         children: [
//             //           const Icon(Icons.compare_rounded,
//             //               size: 120, color: Colors.orangeAccent),
//             //           Flexible(
//             //               flex: 1,
//             //               child: Text(_loremIpsum, style: _contentStyle)),
//             //         ],
//             //       ),
//             //     ),
//             //     AccordionSection(
//             //       isOpen: false,
//             //       leftIcon: const Icon(Icons.food_bank, color: Colors.white),
//             //       header: Text('Company Info', style: _headerStyle),
//             //       content: DataTable(
//             //         sortAscending: true,
//             //         sortColumnIndex: 1,
//             //         dataRowHeight: 40,
//             //         showBottomBorder: false,
//             //         columns: [
//             //           DataColumn(
//             //               label: Text('ID', style: _contentStyleHeader),
//             //               numeric: true),
//             //           DataColumn(
//             //               label:
//             //                   Text('Description', style: _contentStyleHeader)),
//             //           DataColumn(
//             //               label: Text('Price', style: _contentStyleHeader),
//             //               numeric: true),
//             //         ],
//             //         rows: [
//             //           DataRow(
//             //             cells: [
//             //               DataCell(Text('1',
//             //                   style: _contentStyle,
//             //                   textAlign: TextAlign.right)),
//             //               DataCell(Text('Fancy Product', style: _contentStyle)),
//             //               DataCell(Text(r'$ 199.99',
//             //                   style: _contentStyle, textAlign: TextAlign.right))
//             //             ],
//             //           ),
//             //           DataRow(
//             //             cells: [
//             //               DataCell(Text('2',
//             //                   style: _contentStyle,
//             //                   textAlign: TextAlign.right)),
//             //               DataCell(
//             //                   Text('Another Product', style: _contentStyle)),
//             //               DataCell(Text(r'$ 79.00',
//             //                   style: _contentStyle, textAlign: TextAlign.right))
//             //             ],
//             //           ),
//             //           DataRow(
//             //             cells: [
//             //               DataCell(Text('3',
//             //                   style: _contentStyle,
//             //                   textAlign: TextAlign.right)),
//             //               DataCell(
//             //                   Text('Really Cool Stuff', style: _contentStyle)),
//             //               DataCell(Text(r'$ 9.99',
//             //                   style: _contentStyle, textAlign: TextAlign.right))
//             //             ],
//             //           ),
//             //           DataRow(
//             //             cells: [
//             //               DataCell(Text('4',
//             //                   style: _contentStyle,
//             //                   textAlign: TextAlign.right)),
//             //               DataCell(Text('Last Product goes here',
//             //                   style: _contentStyle)),
//             //               DataCell(Text(r'$ 19.99',
//             //                   style: _contentStyle, textAlign: TextAlign.right))
//             //             ],
//             //           ),
//             //         ],
//             //       ),
//             //     ),
//             //     AccordionSection(
//             //       isOpen: false,
//             //       leftIcon: const Icon(Icons.contact_page, color: Colors.white),
//             //       header: Text('Contact', style: _headerStyle),
//             //       content: Wrap(
//             //         children: List.generate(
//             //             30,
//             //             (index) => const Icon(Icons.contact_page,
//             //                 size: 30, color: Color(0xff999999))),
//             //       ),
//             //     ),
//             //     AccordionSection(
//             //       isOpen: false,
//             //       leftIcon: const Icon(Icons.computer, color: Colors.white),
//             //       header: Text('Jobs', style: _headerStyle),
//             //       content: const Icon(Icons.computer,
//             //           size: 200, color: Color(0xff999999)),
//             //     ),
//             //     AccordionSection(
//             //       isOpen: false,
//             //       leftIcon: const Icon(Icons.movie, color: Colors.white),
//             //       header: Text('Culture', style: _headerStyle),
//             //       content: const Icon(Icons.movie,
//             //           size: 200, color: Color(0xff999999)),
//             //     ),
//             //     AccordionSection(
//             //       isOpen: false,
//             //       leftIcon: const Icon(Icons.people, color: Colors.white),
//             //       header: Text('Community', style: _headerStyle),
//             //       content: const Icon(Icons.people,
//             //           size: 200, color: Color(0xff999999)),
//             //     ),
//             //     // AccordionSection(
//             //     //   isOpen: false,
//             //     //   leftIcon: const Icon(Icons.person_add, color: Colors.white),
//             //     //   header: Text('Accordion within Accordion', style: _headerStyle),
//             //     //   contentHorizontalPadding: 15,
//             //     //   contentVerticalPadding: 15,
//             //     //   content: Row(
//             //     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             //     //     crossAxisAlignment: CrossAxisAlignment.start,
//             //     //     children: [
//             //     //       Flexible(
//             //     //         flex: 1,
//             //     //         child: Text(
//             //     //           '\nTo your right you have an accordion nested within an accordion:',
//             //     //           style: _contentStyle,
//             //     //           textAlign: TextAlign.right,
//             //     //         ),
//             //     //       ),
//             //     //       Container(
//             //     //         width: 200,
//             //     //         height: 200,
//             //     //         child: Accordion(
//             //     //           headerBackgroundColor: Colors.blue[200],
//             //     //           headerPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
//             //     //           contentBackgroundColor: Colors.blue[50],
//             //     //           contentBorderRadius: 10,
//             //     //           children: [
//             //     //             AccordionSection(
//             //     //                 isOpen: false, header: Text('Section #1', style: _headerStyle), content: Text('This is sub-accordion #1 ...', style: _contentStyle)),
//             //     //             AccordionSection(
//             //     //                 isOpen: false, header: Text('Section #2', style: _headerStyle), content: Text('This is sub-accordion #2 ...', style: _contentStyle)),
//             //     //             AccordionSection(
//             //     //                 isOpen: false, header: Text('Section #3', style: _headerStyle), content: Text('This is sub-accordion #3 ...', style: _contentStyle)),
//             //     //           ],
//             //     //         ),
//             //     //       ),
//             //     //     ],
//             //     //   ),
//             //     // ),
//             //     AccordionSection(
//             //       isOpen: false,
//             //       leftIcon: const Icon(Icons.map, color: Colors.white),
//             //       header: Text('Map', style: _headerStyle),
//             //       content: const Icon(Icons.map,
//             //           size: 200, color: Color(0xff999999)),
//             //     ),
//             //   ],
//             // ),
//           ],
//         ),
//       );
// } //__