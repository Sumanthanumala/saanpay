import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:scaan_pay/utils/constants.dart';
class transfer_block extends StatefulWidget {
  @override
  State<transfer_block> createState() => _transfer_blockState();
}

class _transfer_blockState extends State<transfer_block> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 140.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFFEAF7FF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h,left: 8.w),
            child: Text(
              "Transfer Money",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          transfer(),
        ],
      ),
    );
  }

  Widget transfer() {
    List Items = [
      {
        "Image": "assets/images/scan&pay.png",
        "name": "Scan & Pay",
        "routes":kqrscanner
      },
      {
        "Image": "assets/images/bankaccount.png",
        "name": "Add Bank Account",
        "routes":kqrscanner
      },
      {
        "Image": "assets/images/selftransfer.png",
        "name": "Self Transfer",
        "routes":kselftransfer
      },
      {
        "Image": "assets/images/pay_with_number.png",
        "name": "Pay Phone Number",
        "routes":kqrscanner
      },
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: SizedBox(
        height: 75.h,
        child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: Items.length,
            itemBuilder: ((context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child: Image.asset(
                      Items[index]["Image"],
                      width: 43.w,
                    ),
                    onTap: () {
                      Get.toNamed(Items[index]["routes"]);
                  },
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 60.w,
                    child: Text(
                      Items[index]["name"],
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF515151),
                          fontSize: 11.sp),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                ],
              );
            }
            )
        ),
      ),
    );
  }
}
