import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.chevron_left,
          size: 35,
          color: Colors.black,
        ),
        title: const Text(
          'Settings',
          style: TextStyle(color: Color(0xff4338CA)),
        ),
      ),
      body: Column(
        children: [
          ListTileTheme(
            child: ListTile(
              // leading: Icon(Icons.monetization_on),
              title: Text(
                'Language',
                textScaleFactor: 1,
              ),
              trailing: Icon(Icons.chevron_right),
              selected: false,
              onTap: () {},
            ),
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
          ListTileTheme(
            child: ListTile(
              // leading: Icon(Icons.monetization_on),
              title: Text(
                'About',
                textScaleFactor: 1,
              ),
              trailing: Icon(Icons.chevron_right),
              selected: false,
              onTap: () {},
            ),
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
          ListTileTheme(
            child: ListTile(
              // leading: Icon(Icons.monetization_on),
              title: Text(
                'Privacy Policy',
                textScaleFactor: 1,
              ),
              trailing: Icon(Icons.chevron_right),
              selected: false,
              onTap: () {},
            ),
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
          ListTileTheme(
            child: ListTile(
              // leading: Icon(Icons.monetization_on),
              title: Text(
                'Terms of Use',
                textScaleFactor: 1,
              ),
              trailing: Icon(Icons.chevron_right),
              selected: false,
              onTap: () {},
            ),
            textColor: Colors.black,
            iconColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
