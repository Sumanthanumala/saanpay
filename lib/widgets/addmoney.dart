import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class addmoney extends StatefulWidget {
  String text;

  addmoney({required this.text});

  @override
  State<addmoney> createState() => addmoneyState();
}

class addmoneyState extends State<addmoney> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: Container(
        padding: const EdgeInsets.all(6.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: Border.all(width: 1.sp, color: const Color(0xFF5A64BF))),
        child: Row(
          children: [
            Text('+\u{20B9}',
                style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF5A64BF)
            )),
            Text(widget.text,
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF5A64BF)
                )),
          ],
        ),
      ),
    );
  }
}
