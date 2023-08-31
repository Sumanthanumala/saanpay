import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/QR_screen/Qr_page.dart';
import 'package:scaan_pay/screens/services/all_services.dart';
import 'package:scaan_pay/screens/chat/chat.dart';
import 'package:scaan_pay/screens/menu/menu.dart';
import 'home/homepage.dart';

class dashboardpage extends StatefulWidget {
  @override
  State<dashboardpage> createState() => _dashboardState();
}

class _dashboardState extends State<dashboardpage> {
  var index = 0;
  List<Widget> screenslist = <Widget>[
    MyHomePage(),
    servicespage(),
    chatpage(),
    menupage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: screenslist,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => qr_page(),
                ));
          },
          backgroundColor: const Color(0xFFFFFFFF),
          elevation: 0.0,
          child: index == 2
              ? Image.asset(
                  'assets/images/floating_search.png',
                  height: 22.h,
                  width: 22.w,
                )
              : Image.asset(
                  'assets/images/scan.png',
                  width: 34.w,
                  height: 34.h,
                )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        currentIndex: index,
        elevation: 0,
        selectedItemColor: const Color(0xFF5A64BF),
        selectedFontSize: 12.sp,
        unselectedFontSize: 10.sp,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle:
            const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w600),
        unselectedItemColor: const Color(0xFF515151),
        unselectedLabelStyle:
            const TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500),
        selectedIconTheme: const IconThemeData(color: Color(0xFF5A64BF)),
        iconSize: 28.sp,
        unselectedIconTheme: const IconThemeData(color: Color(0xFF515151)),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_rounded), label: 'All Services'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        ],
      ),
    );
  }
}
