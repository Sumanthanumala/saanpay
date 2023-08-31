import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/widgets/skip_button.dart';

class signupimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.w,top: 15.h),
                child: SizedBox(
                    width: 19.w,
                    height: 19.h,
                child: InkWell(onTap: () {
                  Navigator.pop(context);
                },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Color(0xff000000),
                  ),
                ),
            ),
              ),
              skipbutton(),
            ],
          ),
          SizedBox(
            width: 380.w,
            height: 213.72.h,
            child: Image.asset('assets/images/img_6.png',fit: BoxFit.cover),
          ),
        ],
      );
  }
}