import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class elevatedButton extends StatelessWidget {

  String text;
  VoidCallback ontap;

  elevatedButton({required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(width: 158.w,
        height: 42.h,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.sp)),
                backgroundColor: Color(0xFF5A64BF)),
            onPressed: () {
              ontap();
            },
            child: Text( text,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  fontSize: 16.sp),
            )),
      ),
    );
  }
}


