

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class textfield extends StatelessWidget {
  textfield(
      {super.key,
      required this.hinttext,
      this.textfieldcontroller,
      this.maxlength,
      this.error_text,
      this.keyboard});

  String hinttext;
  String ?error_text;
  TextEditingController ?textfieldcontroller;
  TextInputType ? keyboard;
  int ?maxlength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 12.h,left: 27.w,right: 27.w),
          child: SizedBox(
            width: 308.w,
            height: 39.h,
            child: TextField(
                maxLength: maxlength,
                controller: textfieldcontroller,
                keyboardType: keyboard,
                decoration: InputDecoration(counterText: '',
                    errorText: error_text,
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFF515151), width: 0.5)),
                    hintText: hinttext,
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 12.h, horizontal: 8.w),
                    hintStyle: TextStyle(
                        color: const Color(0xFFA09D9D),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Inter',
                        fontSize: 12.sp))),
          ),
        ),
      ],
    );
  }
}
