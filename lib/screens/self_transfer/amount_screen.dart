
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:scaan_pay/screens/self_transfer/self_transfer_screen.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';

import '../../utils/constants.dart';

class amount extends StatefulWidget {

  @override
  State<amount> createState() => _amountState();
}

class _amountState extends State<amount> {

  var textcontroller=TextEditingController();
  var item;
  var textlenn;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
          foregroundColor: const Color(0xFF252525),
        automaticallyImplyLeading: false,
        leading: InkWell(onTap: () {
          Get.back();
        },
            child: Icon(Icons.arrow_back_ios_outlined)),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h,),
            profile_pic(),

            SizedBox(height: 16.h,),
            Align(alignment: Alignment.center,
              child: Text(
                'Self Transfer',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: const Color(0xFF252525)),
              ),
            ),
            SizedBox(
              height: 28.h,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
                '\u20B9',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    fontSize: 24.sp,
                    color: const Color(0xFF252525)),
              ),
              SizedBox(width: 8.h,),
              SizedBox( width: size(),
                  child: TextField(
                    maxLength: textlenn==6? textlenn:6,
                    onChanged: (value) {
                    setState(() {
                      // value=NumberFormat.currency(symbol: '₹ ',decimalDigits: 0,locale: 'HI',).format(int.parse(textcontroller.text));
                    });
                  },
                    controller: textcontroller,
                    style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 40.sp,
                    color: const Color(0xFF252525)),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: const InputDecoration(counterText: '',
                      hintText: '0',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none
                    ),
                  ),
                )
              ],),

            SizedBox(height: 65.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Container(
                width: 328.w,
                height: 158.h,
                decoration: const BoxDecoration(color: Color(0xFFEAF7FF),
                  boxShadow: [
                  BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1))
                ],
                ),
                child: Column(
                  children: [],
                )),
            ),
            SizedBox(height: 8.h,),
            Align(alignment: Alignment.center,
                child: addanotheracc()),
            SizedBox(height: 32.h,),
            elevatedButton(text: 'Transfer Now', ontap: (){
              if(textcontroller.text.isEmpty){
                textlenn==1;
              }
              else{
                setState(() {
                  textlenn=textcontroller.text.length;
                });
                Get.toNamed(kpaysucess,arguments: textcontroller.text);
              }
            })
          ],
        ),
      ),
    );
  }
  double size() {
    return textcontroller.text.length == 0
        ? 25.0 * (textcontroller.text.length + 1)
        : 25.0 * textcontroller.text.length;
  }
}

Widget profile_pic (){
  return Column(
    children: [
      Align(alignment: Alignment.center,
        child: SizedBox(width: 78.0,height: 78.0,
          child: CircleAvatar(backgroundColor: Colors.transparent,
            child: Image.asset('assets/images/vishnu.png'),
          ),
        ),
      ),
      SizedBox(height: 8.h,),
      Align(alignment: Alignment.center,
        child: Text(
          'Vishnu',
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              color: const Color(0xFF252525)),
        ),
      ),
    ],
  );
}