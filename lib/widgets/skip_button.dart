import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/login/Login.dart';

class skipbutton extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0,right: 16.0,),
      child: Align(alignment: Alignment.centerRight,
        child: SizedBox(
          width: 30.w,
          height: 22.h,
          child: InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return loginpage();
              },
            ));
          },
            child: const Text('Skip',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF515151)),
            ),
          ),
        ),
      ),
    );
  }
}
