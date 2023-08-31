import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pinput/pinput.dart';
import 'package:scaan_pay/main.dart';
import 'package:scaan_pay/screens/home/homepage.dart';
import 'package:scaan_pay/screens/Dashboard.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/signup_image.dart';
import 'package:scaan_pay/widgets/signup_text.dart';

class otpverify extends StatefulWidget {
  final String mobilenumber;

  otpverify(this.mobilenumber);

  @override
  State<otpverify> createState() => _otpverifyState();
}

class _otpverifyState extends State<otpverify> {
  int start=30;
  bool wait=false;
  var verify=false;
  String receivedotp='123456';
  var otpcontroller=TextEditingController();
  void starttimer()
  {
    Timer timer=Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (start==0){
          timer.cancel();
        }else{
          start--;
        }
      });
    });
  }
  @override
  void initState(){
    super.initState();
    starttimer();
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      FocusScope.of(context).unfocus();
    },
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                signupimage(),
                signuptext(
                    width: 277.w,
                    height: 36.h,
                    text: 'Mobile Verification',
                    fontsize: 28.sp),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 35.h),
                  child: SizedBox(
                      width: 185.w,
                      height: 40.h,
                      child: Text(
                        'OTP Sent to +91 ${widget.mobilenumber}',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 24.h),
                  child: SizedBox(
                    width: 301.w,
                    height: 51.h,
                    child: Pinput(
                      controller: otpcontroller,
                      length: 6,
                      // validator: (value) {
                      //   if (value==receivedotp){
                      //       setState(() {
                      //         verify=true;
                      //       });
                      //   }
                      // },
                      keyboardType: TextInputType.number,
                      closeKeyboardWhenCompleted: true,
                      focusedPinTheme: PinTheme(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(width: 1.0.w,color: Colors.black26)
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 16.h),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Text(start>=10 ?'00:$start Sec time remaining':'00:0$start Sec time remaining',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp)),
                    InkWell(onTap: start>0? null : () {
                      starttimer();
                      setState(() {
                        start=30;
                      });
                    },
                      child: Text('Resend OTP',
                      style: TextStyle(
                        color: start>0 ? Colors.black12:Color(0xFF6F6C6C),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp),
                    ),
                    ),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top:85.h),
                  child: elevatedButton(text: 'Verify', ontap: () {
                    if(otpcontroller.text==receivedotp) {
                    Navigator.pushReplacement(context,
                              MaterialPageRoute(
                              builder: (context) {
                                return dashboardpage();
                              },
                            )); }
                    else if(otpcontroller.text.isEmpty){
                      Fluttertoast.showToast(msg: 'Enter OTP');
                    }
                    else{
                      Fluttertoast.showToast(msg: 'Invalid OTP');
                    }
                    },),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
