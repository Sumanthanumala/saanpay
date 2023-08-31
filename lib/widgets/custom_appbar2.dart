import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/Dashboard.dart';

class appbar extends StatelessWidget {
  String text;

  appbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          foregroundColor: const Color(0xff000000),
          automaticallyImplyLeading: false,
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => dashboardpage(),
                    ));
              },
              child: SizedBox(
                height: 19.h,
                width: 19.h,
                child: const Icon(Icons.arrow_back_ios_new_rounded),
              )),
          title: Text(text,
              style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                  color: Color(0xFF252525))),
          centerTitle: true),
    );
  }
}
