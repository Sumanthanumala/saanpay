import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/menu/wallet/wallet_page.dart';
import '../../../widgets/Sub_banner.dart';
import '../../../widgets/addmoney.dart';
import '../../../widgets/elevatedbutton.dart';

class addtowallet extends StatefulWidget {
  @override
  State<addtowallet> createState() => _addtowalletState();
}

class _addtowalletState extends State<addtowallet> {

  var moneycontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            foregroundColor: const Color(0xFF252525),
            title: const Text(
              'Saanpay wallet',
            )),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                balance(),
                SizedBox(
                  height: 24.h,
                ),
                Text('Add Money',
                    style: TextStyle(
                        color: const Color(0xFF252525),
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp)),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 308.w,
                  height: 39.h,
                  child: TextField(controller: moneycontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF252525))),
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF252525))),
                        suffixIcon: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Apply Coupon',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.sp,
                                  color: const Color(0xFF5A64BF)),
                            )),
                        prefixIcon: Padding(
                          padding: EdgeInsets.only(top: 15.h, left: 5.w),
                          child: Text(
                            '\u{20B9}',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: const Color(0xFF252525)),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(width: 280.w,height: 28.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      addmoney(text: '100'),
                      addmoney(text: '200'),
                      addmoney(text: '500'),
                      addmoney(text: '2000'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 36.h,
                ),
                elevatedButton(text: 'Proceed & Add', ontap: () {
                  // if(moneycontroller.text.isNotEmpty){
                  //
                  // }
                }),
                SizedBox(
                  height: 24.h,
                ),
                sub_banner_block(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
