import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:scaan_pay/screens/self_transfer/amount_screen.dart';

class recepit_page extends StatefulWidget {
  @override
  State<recepit_page> createState() => _recepit_pageState();
}

class _recepit_pageState extends State<recepit_page> {
  var data = Get.arguments;
  var time = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xFF252525),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () => Get.back(),
            child: Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(children: [
          SizedBox(
            height: 8.h,
          ),
          profile_pic(),
          SizedBox(height: 8.h),
          Align(
            alignment: Alignment.center,
            child: Text(
              '+91 821071199',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: const Color(0xFF252525)),
            ),
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 21.w,
                        height: 21.h,
                        child: Image.asset('assets/images/completed.png'),
                      ),
                      SizedBox(
                        width: 8.h,
                      ),
                      Text(
                        'Completed',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                            color: const Color(0xFF252525)),
                      ),
                    ],
                  ),
                  Text(
                      '  ${DateFormat('yMMMd').format(time)} '
                      ' ${DateFormat('jm').format(time)}',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 10.sp,
                          color: const Color(0xFF676767))),
                ],
              ),
              Text(
                ' ${NumberFormat.currency(
                    symbol: '₹ ',
                    decimalDigits: 0,
                    locale: 'HI').format(int.parse(data))}',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 24.sp,
                    color: const Color(0xFF252525)),
              )
            ],
          ),
          SizedBox(
            height: 24.h,
          ),
          Container(
            width: 328.w,
            height: 264.h,
            decoration: BoxDecoration(
                color: const Color(0xFFEAF7FF),
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: const [
                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1))
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 22.w,
                        height: 22.h,
                        child: Image.asset('assets/images/receipt.png'),
                      ),
                      SizedBox(
                        width: 16.h,
                      ),
                      Text(
                        'Receipt',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 14.sp,
                            color: const Color(0xFF252525)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  recepit_text(
                      text1: 'To - Vishnu', text2: '821071199@okicici'),
                  recepit_text(
                      text1: 'From - Toufique Alam',
                      text2: 'toufiquealam@idfc'),
                  SizedBox(
                    child: Row(
                      children: [
                        recepit_text(
                            text1: 'UPI Transaction ID', text2: '925109698935'),
                        Padding(
                          padding: EdgeInsets.only(top: 30.sp),
                          child: SizedBox(
                            width: 17.w,
                            height: 17.h,
                            child: InkWell(
                                onTap: () {},
                                child: Image.asset('assets/images/copy.png')),
                          ),
                        )
                      ],
                    ),
                  ),
                  recepit_text(
                      text1: 'Operator Transaction ID',
                      text2: 'CICAgKDR6t-np0h')
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          SizedBox(
            width: 226.w,
            height: 20.h,
            child: Text(
              textAlign: TextAlign.center,
              'Payment may take up to 3 working days to be reflected in your account',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  fontSize: 8.sp,
                  color: const Color(0xFF676767)),
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                  width: 143.w,
                  height: 37.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            side: const BorderSide(
                                color: Color(0xFF5A64BF), width: 0.5)),
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF5A64BF)),
                    child: const Text('Help & Sipport'),
                  )),
              SizedBox(
                  width: 143.w,
                  height: 37.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            side: const BorderSide(
                                color: Color(0xFF5A64BF), width: 0.5)),
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF5A64BF)),
                    child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.share,size: 15),
                        Text('Share Receipt'),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(height: 16.h,),
          Text(
            'Powered By',
            style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                color: const Color(0xFF252525),
                fontSize: 10.sp),
          )
        ]),
      ),
    );
  }
}

class recepit_text extends StatelessWidget {
  String text1;
  String text2;

  recepit_text({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, top: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1,
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  color: const Color(0xFF252525))),
          SizedBox(height: 4.h),
          Text(
            text2,
            style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color(0xFF676767)),
          )
        ],
      ),
    );
  }
}
