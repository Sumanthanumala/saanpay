import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:scaan_pay/utils/constants.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';

class pay_success extends StatefulWidget {
  @override
  State<pay_success> createState() => _pay_successState();
}

class _pay_successState extends State<pay_success> {
  var _amount = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFF252525),
        backgroundColor: const Color(0xFFFFFFFF),
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined))
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(height: 125.h),
        TweenAnimationBuilder(
          tween: Tween(begin: 0.0,end: 1.0),
          duration: Duration(milliseconds: 800),
          builder: (context, value, child) => SizedBox(
            width: 150.w,
            height: 150.h,
            child: CircularProgressIndicator(
              value: value,
              color: Colors.orangeAccent,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        SizedBox(height: 64.h),
        Text('Payment Done',
            style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 20.sp,
                color: const Color(0xFF252525))),
        SizedBox(height: 16.h),
        SizedBox(
          width: 358.w,
          height: 44.h,
          child: Text(
            textAlign: TextAlign.center,
            'Amount Transferred Successfully to Vishnu \n of '
            '${NumberFormat.currency(
                locale: 'HI',decimalDigits: 0,
                symbol: '₹ ').format(int.parse(_amount))}',
            style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
                color: const Color(0xFF252525)),
          ),
        ),
        SizedBox(height: 36.h),
        Container(
            width: 328.w,
            height: 70.h,
            decoration: BoxDecoration(
                color: const Color(0xFFEAF7FF),
                borderRadius: BorderRadius.circular(10.r)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/images/receipt.png',
                  width: 31.w,
                  height: 31.h,
                ),
                Text(
                  'Transaction Recepit',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: const Color(0xFF252525)),
                ),
                Container(
                    margin: const EdgeInsets.only(left: 40.0),
                    child: InkWell(
                        onTap: () {
                          Get.toNamed(krecepit,arguments: _amount);
                        },
                        child: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 18,
                        )))
              ],
            )),
        SizedBox(height: 54.h),
        elevatedButton(
            text: 'Back To Home', ontap: () {
          Get.toNamed(kdashboard);
            },)
      ]),
    );
  }
}
