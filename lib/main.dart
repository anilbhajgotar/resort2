import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resorts/controllers/home_controllers.dart';
import 'package:resorts/pages/account_edit_page.dart';
import 'package:resorts/pages/account_page.dart';
import 'package:resorts/pages/booking_page.dart';
import 'package:resorts/pages/demo.dart';
import 'package:resorts/pages/homePage.dart';
import 'package:resorts/pages/inbox_page.dart';
import 'package:resorts/pages/loginPage.dart';
import 'package:resorts/pages/main_home_page.dart';
import 'package:resorts/pages/resort_details.dart';
import 'package:resorts/pages/resort_list_page.dart';
import 'package:resorts/pages/saved_resort_page.dart';
import 'package:resorts/pages/setting.dart';
import 'package:resorts/pages/support_guest.dart';
import 'package:resorts/routes/app_pages.dart';
import 'package:resorts/routes/app_routes.dart';
import 'package:resorts/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.HOME,
      routes: {
        "/": (context) => MainHomePage(),
        // "/": (context) => ResortListPage(),
        AppRoutes.HOME: (context) => MainHomePage(),
        AppRoutes.ResortListPage: (context) => ResortListPage(),
      },
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      // title: 'Resorts',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // debugShowCheckedModeBanner: false,
      // // initialRoute: MyRoutes.accountEditPage,
      // // initialRoute: MyRoutes.resortListPage,
      // // initialRoute: MyRoutes.homeController,
      // initialRoute: MyRoutes.homeRoute,
      // routes: {
      //   // "/": (context) => HomeController(),
      //   "/": (context) => MainHomePage(),
      //   // "/": (context) => SupportGuest(),
      //   MyRoutes.homeRoute: (context) => MainHomePage(),
      //   MyRoutes.accountPage: (context) => AccountPage(),
      //   MyRoutes.loginRoute: (context) => LoginScreen(),
      //   MyRoutes.supportGuest: (context) => SupportGuest(),
      //   // MyRoutes.demo: (context) => DemoPage(),
      //   MyRoutes.settingPage: (context) => SettingPage(),
      //   MyRoutes.inboxPage: (context) => InboxPage(),
      //   MyRoutes.accountEditPage: (context) => AccountEditPage(),
      //   MyRoutes.bookingPage: (context) => BookingPage(),
      //   MyRoutes.savedBookingPage: (context) => SavedResortPage(),
      //   MyRoutes.resortDetailsPage: (context) => ResortDetailsPage(),
      //   MyRoutes.resortListPage: (context) => ResortListPage(),

      //   // "/home": (context) => LoginScreen(),
      // },

      // home: const MyHomePage(),
    );
  }
}
