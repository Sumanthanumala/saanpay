import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:scaan_pay/utils/constants.dart';

class passbook_block extends StatefulWidget {

  @override
  State<passbook_block> createState() => _passbook_blockState();
}

class _passbook_blockState extends State<passbook_block> {
  @override
  Widget build(BuildContext context) {
    List Items = [
      {
        "Image": "assets/images/wallet.png",
        "name": "My Wallet",
        "routes": kmywallet
      },
      {
        "Image": "assets/images/passbook.png",
        "name": "Passbook & History",
        "routes": kmywallet
      },
      {
        "Image": "assets/images/Refer.png",
        "name": "Refer & Earn",
        "routes": kmywallet
      },
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SizedBox(
        width: 287.85.w,
        height: 100.h,
        child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(width: 33.w),
            scrollDirection: Axis.horizontal,
            itemCount: Items.length,
            itemBuilder: ((context, index) {
              return InkWell( onTap: () {
                Get.toNamed(Items[index]["routes"]);
              },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      Items[index]["Image"],
                      width: 62.43.w,
                      height: 62.43,
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    SizedBox(
                      width: 73.w,
                      height:29.h,
                      child: Text(
                        Items[index]["name"],
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF515151),
                            fontSize: 12.sp),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              );
            }
            )
        ),
      ),
    );
  }
}
