import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:resorts/pages/account_page.dart';

class BottomNavBarFb5 extends StatefulWidget {
  const BottomNavBarFb5({Key? key}) : super(key: key);

  @override
  State<BottomNavBarFb5> createState() => _BottomNavBarFb5State();
}

class _BottomNavBarFb5State extends State<BottomNavBarFb5> {
  final primaryColor = const Color(0xff4338CA);

  final secondaryColor = const Color(0xff6D28D9);

  final accentColor = const Color(0xffffffff);

  final backgroundColor = const Color(0xffffffff);

  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    bool check = false, update, home = true;

    return BottomAppBar(
      color: accentColor,
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
                  text: "Explore",
                  icon: Icons.grid_view_outlined,
                  selected: home = check,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Saved",
                  icon: Icons.favorite_border_outlined,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Booking",
                  icon: Feather.briefcase,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Inbox",
                  icon: Icons.message,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  text: "Account",
                  icon: Icons.person,
                  selected: home = check,
                  onPressed: () async {
                    setState(() {
                      home = false;
                      // update = true;
                      check = true;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                            BuildContext contex,
                          ) =>
                                  AccountPage()));

                      // update = !update;
                      // check = !check;s
                    });
                  }),
            ],
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
  // final Icon icon = Icon;
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
              color: selected ? primaryColor : Colors.grey),
        )
      ],
    );
  }
}
